/*
	Copyright (c) 2019, Hein Alexander Mante (author)

	All rights reserved.

	Redistribution and use in source and binary forms, with or without
	modification, are permitted provided that the following conditions
	are met:

	*	Redistributions of source code must retain the above
		copyright notice, this list of conditions and the following
		disclaimer.

	*	Redistributions in binary form must reproduce the above
		copyright notice, this list of conditions and the following
		disclaimer in the documentation and/or other materials
		provided with the distribution.

	*	Neither the name of the author nor the names of its
		contributors may be used to endorse or promote products
		derived from this software without specific prior written
		permission.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
	"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
	LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
	FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
	COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
	INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
	BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
	CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
	LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
	ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
	POSSIBILITY OF SUCH DAMAGE.
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdint.h>
#include "sf.h"
#include "mextern.h"



TaintOriginNode * taintOriginHead = NULL;
bool RegMarked = false;
bool fRegMarked = false;

char *reg_mapping[] =\
{
	[0] "x0",
	[1] "ra",
	[2] "sp",
	[3] "gp",
	[4] "tp",
	[5] "t0",
	[6] "t1",
	[7] "t2",
	[8] "s0/fp",
	[9] "s1",
	[10] "a0",
	[11] "a1",
	[12] "a2",
	[13] "a3",
	[14] "a4",
	[15] "a5",
	[16] "a6",
	[17] "a7",	
	[18] "s2",
	[19] "s3",
	[20] "s4",
	[21] "s5",
	[22] "s6",
	[23] "s7",
	[24] "s8",
	[25] "s9",
	[26] "s10",
	[27] "s11",
	[28] "t3",
	[29] "t4",
	[30] "t5",
	[31] "t6",
	[32] "pc",	
};

/*
*	Implementation of the linked list for storing TaintOriginNode objects:
*/


void
printList(Engine *E, State *S)
{
	TaintOriginNode * ptr = taintOriginHead;
	mprint(E,S,nodeinfo,"\n[ ");

	while (ptr != NULL)
	{
		mprint(E,S,nodeinfo,"%llu,%u,%u,%llu\n",ptr->taintAddress,ptr->taintstartPC,ptr->taintendPC,ptr->taintCol);
		ptr = ptr->next;
	}
	
	mprint(E,S,nodeinfo," ]");
}

bool
isEmpty(void)
{
	return taintOriginHead == NULL;
}

int
length(void)
{
	int len = 0;
	TaintOriginNode * current;
	for (current = taintOriginHead; current != NULL; current = current -> next)
	{
		len++;
	}
	return len;
}

bool
contains (uint64_t searchAddr, uint32_t taintPC, SunflowerTaintMemType memType)
{
	TaintOriginNode * current = taintOriginHead;
	
	if (taintOriginHead == NULL)
	{
		return false;
	}

	while (current->taintAddress != searchAddr
		|| current->taintstartPC > taintPC
		|| current->taintendPC < taintPC
		|| current->memType != memType)
	{
		if (current->next == NULL)
		{
			return false;
		}
		else
		{
			current = current -> next;
		}
	}
	return true;
}

bool
containsExactPC (uint64_t searchAddr, uint32_t taintstartPC, uint32_t taintendPC, SunflowerTaintMemType memType)
{
	TaintOriginNode * current = taintOriginHead;
	
	if (taintOriginHead == NULL)
	{
		return false;
	}

	while (current->taintAddress != searchAddr
		|| current->taintstartPC != taintstartPC
		|| current->taintendPC != taintendPC
		|| current->memType != memType)
	{
		if (current->next == NULL)
		{
			return false;
		}
		else
		{
			current = current -> next;
		}
	}
	return true;
}

/*

TaintOriginNode *
findByAddr (Engine *E, State *S, uint64_t searchAddr)
{
	TaintOriginNode * current = taintOriginHead;
	
	if (taintOriginHead == NULL)
	{
		mprint(E,S,nodeinfo,"Couldn't find taintOriginHead in findByAddr function");
		return NULL;
	}

	while (current->taintAddress != searchAddr)
	{
		if (current->next == NULL)
		{
			mprint(E,S,nodeinfo,"Couldn't find taintOriginHead in findByAddr function");
			return NULL;
		}
		else
		{
			current = current -> next;
		}
	}
	return current;
}

*/

uint64_t
findByAll (Engine *E, State *S, uint64_t searchAddr, uint32_t taintPC, SunflowerTaintMemType memType)
{
	TaintOriginNode * current = taintOriginHead;
	uint64_t outCol = 0;
	
	if (!contains(searchAddr,taintPC,memType))
	{
		mprint(E,S,nodeinfo,"findByAll function is looking for a taint origin which doesn't exist according to the contains function!");
		return 0;
	}

	while (current != NULL)
	{
		if (current->taintAddress == searchAddr
			&& current->taintstartPC <= taintPC
			&& current->taintendPC >= taintPC
			&& current->memType == memType)
		{
			outCol = outCol | current->taintCol;
		}

		current = current -> next;
	}
	if (outCol == 0)
	{
		mprint(E,S,nodeinfo,"Problem in findByAll function: the contains function claims a taint origin as below exists, but find cannot find it (or the taint colour thereof is 0 which would be silly):\nAddress: %llu\nPC range contains: %u\nmemType: %d\n",searchAddr,taintPC,(int)memType);
		return 0;
	}
	return outCol;
}

void
insertFirst (uint64_t addr, uint32_t taintstartPC, uint32_t taintendPC, uint64_t taintCol, SunflowerTaintMemType memType)
{
	TaintOriginNode * link = (TaintOriginNode *) calloc(1,sizeof(TaintOriginNode));
	
	link->taintAddress	= addr;
	link->taintstartPC	= taintstartPC;
	link->taintendPC	= taintendPC;
	link->taintCol		= taintCol;
	link->memType		= memType;
	link->next		= taintOriginHead;

	taintOriginHead		= link;
}

TaintOriginNode *
deleteFirst(void)
{
	TaintOriginNode * tmplink	= taintOriginHead;
	taintOriginHead			= taintOriginHead -> next;
	
	return tmplink;
}

TaintOriginNode *
delete(Engine *E, State *S, uint64_t addr, uint32_t taintstartPC, uint32_t taintendPC, SunflowerTaintMemType memType)
{
	TaintOriginNode * current 	= taintOriginHead;
	TaintOriginNode * prev		= NULL;

	if (taintOriginHead == NULL)
	{
		mprint(E,S,nodeinfo,"Tried to delete from an empty list in delete()");
		return NULL;
	}

	while  (current->taintAddress != addr
		|| current->taintstartPC != taintstartPC
		|| current->taintendPC != taintendPC
		|| current->memType != memType)
	{
		if (current->next == NULL)
		{
			mprint(E,S,nodeinfo,"Tried to delete non-existant entry from list in delete()");
			return NULL;
		}
		else
		{
			prev	= current;
			current = current->next;
		}
	}
	if (current == taintOriginHead)
	{
		taintOriginHead = taintOriginHead->next;
	}
	else
	{
		prev->next = current -> next;
	}
	return current;
}



/*
*	End of implementation of linked list of TaintOriginNode
*/

/* FIXME AddrOut is uint64_t !!! */
void
taintprop(Engine *E, State *S, uint8_t issuedOp,
	uint64_t immtaint1, uint64_t immtaint2,
	uint64_t AddrOut, SunflowerTaintMemType memType)
{
	uint64_t outCol;
	outCol = immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;

	/*
	if (outCol != (uint64_t) 0) {	
		printf("A outCol is 0x%llX S->riscv->P.ID.op 0x%X %ud S->riscv->P.EX.op 0x%X %ud \n",
			outCol,S->riscv->P.ID.op,S->riscv->P.ID.op,S->riscv->P.EX.op,S->riscv->P.EX.op);
		//mprint(E, NULL, siminfo,"outCol nonZero. P.ID.op %b P.EX.op %b\n",S->riscv->P.ID.op,S->riscv->P.EX.op);
	}
	*/

	/*
	*	Last OR represents PC taint which should be propagated on every step
	*/

	/*
	 *	BRANCH executes in the ID stage.
	 */

	switch (issuedOp)
	{
		case RISCV_OP_LUI:
			//printf("LUI %s is triggered immtaint1 0x%llX immtaint2 0x%llX\n",riscv_opstrs[RISCV_OP_LUI],immtaint1,immtaint2);
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_AUIPC:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_AUIPC]);
			break;
		case RISCV_OP_JAL:
			//printf("\nOp %s is triggered instruction_taintDistribution[issuedOp].taintCol 0x%llX immtaint1 0x%llX immtaint2 0x%llX S->riscv->taintR[32].taintCol 0x%llX\n", 
			//		riscv_opstrs[issuedOp],S->riscv->instruction_taintDistribution[issuedOp].taintCol, immtaint1, immtaint2, S->riscv->taintR[32].taintCol);

			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_JALR:
			//printf("\nOp %s is triggered instruction_taintDistribution[issuedOp].taintCol 0x%llX immtaint1 0x%llX immtaint2 0x%llX S->riscv->taintR[32].taintCol 0x%llX\n", 
			//		riscv_opstrs[issuedOp],S->riscv->instruction_taintDistribution[issuedOp].taintCol, immtaint1, immtaint2, S->riscv->taintR[32].taintCol);

			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_BEQ:
			//printf("BEQ %s is triggered immtaint1 0x%llX immtaint2 0x%llX\n",riscv_opstrs[RISCV_OP_BEQ],immtaint1,immtaint2);
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_BNE:
			//printf("BNE %s is triggered immtaint1 0x%llX immtaint2 0x%llX\n",riscv_opstrs[RISCV_OP_BNE],immtaint1,immtaint2);
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_BLT:
			//printf("BLT %s is triggered immtaint1 0x%llX immtaint2 0x%llX\n",riscv_opstrs[RISCV_OP_BLT],immtaint1,immtaint2);
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_BGE:
			//printf("BGE %s is triggered immtaint1 0x%llX immtaint2 0x%llX\n",riscv_opstrs[RISCV_OP_BGE],immtaint1,immtaint2);
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_BLTU:
			//printf("BLTU %s is triggered immtaint1 0x%llX immtaint2 0x%llX\n",riscv_opstrs[RISCV_OP_BLTU],immtaint1,immtaint2);
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_BGEU:
			//printf("BGEU %s is triggered immtaint1 0x%llX immtaint2 0x%llX\n",riscv_opstrs[RISCV_OP_BGEU],immtaint1,immtaint2);
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_LB:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_LH:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_LW:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_LBU:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_LHU:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SB:
			//printf("RISCV_OP_SB: S->riscv->P.ID.op 0x%X %ud issuedOp 0x%X %ud \n",
			//	S->riscv->P.ID.op,S->riscv->P.ID.op,issuedOp,issuedOp);

			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SW:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_ADDI:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SLTI:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SLTIU:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_XORI:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_ORI:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_ANDI:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SLLI:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SRLI:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SRAI:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_ADD:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SUB:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SLL:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SLT:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SLTU:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_XOR:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SRL:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_SRA:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_OR:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_AND:
			S->riscv->instruction_taintDistribution[issuedOp].taintCol =
					S->riscv->instruction_taintDistribution[issuedOp].taintCol
					| immtaint1 | immtaint2 | S->riscv->taintR[32].taintCol;
			break;
		case RISCV_OP_FENCE:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_FENCE]);
			break;
		case RISCV_OP_FENCE_I:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_FENCE_I]);
			break;
		case RISCV_OP_ECALL:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_ECALL]);
			break;	
		case RISCV_OP_EBREAK:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_EBREAK]);
			break;
		case RISCV_OP_CSRRW:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_CSRRW]);
			break;
		case RISCV_OP_CSRRS:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_CSRRS]);
			break;
		case RISCV_OP_CSRRC:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_CSRRC]);
			break;
		case RISCV_OP_CSRRWI:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_CSRRWI]);
			break;
		case RISCV_OP_CSRRSI:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_CSRRSI]);
			break;
		case RISCV_OP_CSRRCI:
			printf("Discarded %s\n",riscv_opstrs[RISCV_OP_CSRRCI]);
			break;
		default:
			printf("Missed 0x%X %ud\n",issuedOp,issuedOp);
			break;
	}

	switch(memType)
	{
		case kSunflowerTaintMemTypeMemory:
			S->TAINTMEM[AddrOut-S->TAINTMEMBASE].taintCol = outCol;
			break;

		case kSunflowerTaintMemTypeRegister:
			/* 
			 * Omit rd=0 which jal for the pseudoinstruction j
			 */

			if (AddrOut != 0) 
			{
				S->riscv->taintR[AddrOut].taintCol = outCol;
			}
			break;

		/* FIXME AddrOut is 64bit and max element is 33 */
		case kSunflowerTaintMemTypefltRegister:
			S->riscv->taintfR[AddrOut].taintCol = outCol;
			break;

		case kSunflowerTaintMemTypeInstruction:
			mprint(E,S,nodeinfo,"A ShadowMem of type kSunflowerTaintMemTypeInstruction was passed to taintprop this should never be the case!");
			break;

		default:
			mprint(E,S,nodeinfo,"In taintprop something went very wrong: illegal memType passed");
			break;
	}

	printf("\n%s taintCol 0x%llX. AddrOut 0x%llX memType 0x%X immtaint1 0x%llX immtaint2 0x%llX. Regs taintCol:\n", 
		riscv_opstrs[issuedOp], S->riscv->instruction_taintDistribution[issuedOp].taintCol, AddrOut, memType, immtaint1, immtaint2);
	for (int i=0; i<=RISCV_XMAX; i++) 
	{
		printf("R%d(%s): 0x%llX,\t",i,reg_mapping[i],S->riscv->taintR[i].taintCol);
		if (i==7 || i==15 || i==23) {
			printf("\n");		
		}	
	}
	printf("\n");

	if (AddrOut == 32) {
		printf("AddrOut 32 issuedOp %s immtaint1 0x%llX immtaint2 0x%llX S->riscv->taintR[32].taintCol 0x%llX\n", 
				riscv_opstrs[issuedOp], immtaint1, immtaint2, S->riscv->taintR[32].taintCol);
	}

	/*
	if (S->riscv->instruction_taintDistribution[0].taintCol != (uint64_t) 0) {
		//printf("Orig is 0x%llX Modified is 0x%llX\n", tempTaintCol, S->riscv->instruction_taintDistribution[0].taintCol);
		//printf("X1Taint distr 0 is 0x%llX\n", S->riscv->instruction_taintDistribution[0].taintCol);
		//mprint(E,S,nodeinfo,"CTaint distr 0 is %ld\n", S->riscv->instruction_taintDistribution[0].taintCol);
	}
	*/
	
	return;
}

uint64_t
taintretmems(Engine *E, State *S, uint64_t Addr1, int NumBytes)
{
	/*
	*	Function returns the ORed taintCol of the n consecutive memory addresses
	*	after Addr1
	*/
	uint64_t tmpCol1;
	uint64_t outCol = 0;
	uint64_t tmpAddr;

	for (int i = 0; i < NumBytes ; i++)
	{
		tmpAddr = Addr1 + i;
		if (contains(tmpAddr,S->PC,kSunflowerTaintMemTypeMemory))
		{
			tmpCol1 = findByAll(E,S,tmpAddr,S->PC,kSunflowerTaintMemTypeMemory);
		}
		else
		{
			tmpCol1 = S->TAINTMEM[tmpAddr-S->TAINTMEMBASE].taintCol;
		}
		outCol = tmpCol1 | outCol;
	}
	return outCol;
}

/* FIXME rs1 is 64bit while taintR is of [32] positions */
uint64_t
taintretreg(Engine *E, State *S, uint64_t rs1)
{
	uint64_t outCol;
	if (contains(rs1,S->PC,kSunflowerTaintMemTypeRegister))
	{
		outCol = findByAll(E,S,rs1,S->PC,kSunflowerTaintMemTypeRegister);
	}
	else
	{
		outCol =  S->riscv->taintR[rs1].taintCol;
	}
	return outCol;
}

uint64_t
ftaintretreg(Engine *E, State *S, uint64_t rs1)
{
	uint64_t outCol;

	if (contains(rs1,S->PC,kSunflowerTaintMemTypefltRegister))
	{
		outCol = findByAll(E,S,rs1,S->PC,kSunflowerTaintMemTypefltRegister);
	}
	else
	{
		outCol = S->riscv->taintfR[rs1].taintCol;
	}

	return outCol;
}


void
taintclear(Engine *E, State *S,uint64_t addr, SunflowerTaintMemType memType)
{
	switch(memType)
	{
		case kSunflowerTaintMemTypeMemory:
			S->TAINTMEM[addr-S->TAINTMEMBASE].taintCol = 0;
			break;

		case kSunflowerTaintMemTypeRegister:	
			S->riscv->taintR[addr].taintCol = 0;
			break;

		case kSunflowerTaintMemTypefltRegister:
			S->riscv->taintfR[addr].taintCol = 0;
			break;

		case kSunflowerTaintMemTypeInstruction:
			mprint(E,S,nodeinfo,"A ShadowMem of type kSunflowerTaintMemTypeInstruction was passed to taintclear this should never be the case!");
			break;

		default:
			mprint(E,S,nodeinfo,"In taintclear something went very wrong: illegal memType passed");
	}
	return;
}

void
m_taintmem(Engine *E, State *S, uint64_t addr, uint32_t taintstartPC, uint32_t taintendPC, uint64_t taintCol, uint64_t taintLength)
{
	/*	
	*	iterate over all addresses within taintLength (assumption:
	*	taintLength in bytes)
	*/

	uint64_t tmpAddr = addr;

	for (int i = 0; i < taintLength; i++)
	{
		tmpAddr = addr + i;

		if (containsExactPC(tmpAddr,taintstartPC,taintendPC,kSunflowerTaintMemTypeMemory))
		{
			mprint(E,S,nodeinfo,"You're adding a duplicate taint origin: exact same address, PC start and end values and memType, with only the taint colour being different. Perhaps you should reconsider this life choice.");
		}

		insertFirst(tmpAddr, taintstartPC, taintendPC, taintCol, kSunflowerTaintMemTypeMemory);
	}
	return;
}

void
m_taintreg(Engine *E, State *S, uint64_t addr, uint32_t taintstartPC, uint32_t taintendPC, uint64_t taintCol)
{
	if (containsExactPC(addr,taintstartPC,taintendPC,kSunflowerTaintMemTypeRegister))
	{
		mprint(E,S,nodeinfo,"You're adding a duplicate taint origin: exact same address, PC start and end values and memType, with only the taint colour being different. Perhaps you should reconsider this life choice.");
	}

	insertFirst(addr, taintstartPC, taintendPC, taintCol, kSunflowerTaintMemTypeRegister);

	if (!RegMarked)
	{
		for (int i = 0; i < (sizeof(S->riscv->taintR)/sizeof(ShadowMem)) ; i++)
		{
			S->riscv->taintR[i].memType = kSunflowerTaintMemTypeRegister;
		}
		RegMarked = true;
	}
	return;
}

void
m_ftaintreg(Engine *E, State *S, uint64_t addr, uint32_t taintstartPC, uint32_t taintendPC, uint64_t taintCol)
{
	if (containsExactPC(addr,taintstartPC,taintendPC,kSunflowerTaintMemTypefltRegister))
	{
		mprint(E,S,nodeinfo,"You're adding a duplicate taint origin: exact same address, PC start and end values and memType, with only the taint colour being different. Perhaps you should reconsider this life choice.");
	}

	insertFirst(addr, taintstartPC, taintendPC, taintCol, kSunflowerTaintMemTypefltRegister);

	if (!fRegMarked)
	{
		for (int i = 0; i < (sizeof(S->riscv->taintfR)/sizeof(ShadowMem)) ; i++)
		{
			S->riscv->taintfR[i].memType = kSunflowerTaintMemTypefltRegister;
		}
		fRegMarked = true;
	}

	return;
}

void
m_riscvdumptaintdistr(Engine *E, State *S)
{
	for(int i = 0; i < RV32UN_OP_UNMAX; i++)
	{
		mprint(E, S, nodeinfo, "%-8s {", riscv_opstrs[i]);
			for(int j = 0 ; j < 8*sizeof(S->riscv->instruction_taintDistribution[0].taintCol) ; j++)
			{
				mprint(E,S,nodeinfo,"%d",(((S->riscv->instruction_taintDistribution[i].taintCol >> (8*sizeof(S->riscv->instruction_taintDistribution[0].taintCol)-j-1))  & 1) ? 1 : 0));
			}
		mprint(E, S, nodeinfo, "}\n");
	}
}