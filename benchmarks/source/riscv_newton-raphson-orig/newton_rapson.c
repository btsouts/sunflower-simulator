#include <stdio.h>
#include <stdlib.h>
#include <math.h>
//#include <uncertain.h>
#include <printf.h>
#include <assert.h>

float cConst = 6;
float bConst = 2;

float f(float x)
{
	return x*x + bConst*x - cConst;
}

float df(float x)
{
	return 2*x + bConst;
}

float percentage_error(float x, float y) {
	if (x == y) {
		return 0;
	}
	float diff = fabsf(x - y);
	float min = fminf(fabsf(x), fabsf(y));
	return diff / min * 100;
}

void newton_rapson(void) {
	float x = 0;
	float x_new = x - f(x); ///df(x);
	//float diff = x_new - x;

	/*
	while(fabs(diff) > 1e-5){
		x = x_new;
		x_new = x - f(x)/df(x);
		diff = x_new - x;
		printf("x_new %f diff %f\n",x_new,diff);	
	}
	*/
	//printf("x_new2 is %f\n",x_new);	
}

int main(void)
{
	
	/*
	float var_b, var_c, four, stddev_ratio;
	printf_("\n");
	printf_("variance[b]\tvariance[c]\tcovariance[bc]\tvariance[x]\tcovariance[xb]\tcovariance[xc]\terr[x]\terr[xb]\terr[xc]\n");
	for (var_b = 0; var_b < 0.5; var_b += 0.1) {
		b = unf_create(2, var_b);
		for (var_c = 0; var_c < 0.5; var_c += 0.1) {
			if (var_b != 0) {
				stddev_ratio = unf_create_exact(sqrtf(var_c / var_b));

				// corr[b, c] = -1
				c = 6 + stddev_ratio * (2 - b);
				newton_rapson();

				// corr[b, c] = 1
				c = 6 + stddev_ratio * (b - 2);
				newton_rapson();
			}
			if (var_c > var_b) {
				four = unf_create(4, var_c - var_b);

				// covar[b, c] = var[b]
				c = four + b;
				newton_rapson();
			}
			// corr[b, c] = 0
			c = unf_create(6, var_c);
			newton_rapson();
		}
	}
	*/

	printf("Starting Newton-Rapson3\n");
	newton_rapson();

	return 0;
}
