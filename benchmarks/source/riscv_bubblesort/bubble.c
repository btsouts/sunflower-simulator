#include <printf.h>

int abrakadabra[8];

int main()
{
    abrakadabra[0] = 563;
    abrakadabra[1] = 892;
    abrakadabra[2] = 8910;
    abrakadabra[3] = 76711;
    abrakadabra[4] = 61;
    abrakadabra[5] = 1523;
    abrakadabra[6] = 901;
    abrakadabra[7] = 162;

    int tmp = 0;

    for(int i = 0; i < 7; ++i)
    {
        for(int j = 0; j+i < 7; ++j)
        {
            if(abrakadabra[j] > abrakadabra[j+1])
            {
                tmp = abrakadabra[j];
                abrakadabra[j] = abrakadabra[j+1];
                abrakadabra[j+1] = tmp;
            }
        }
    }

    //printf_("first element is %d\n", abrakadabra[0]);

    return 0;
}
