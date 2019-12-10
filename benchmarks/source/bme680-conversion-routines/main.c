#include <stdio.h>
#include <stdlib.h>

#include <printf.h>
#include <assert.h>

#include "BME680_driver_patched/bme680.h"
#include "BME680_driver_patched/bme680_defs.h"


#define FILENAME "Example.csv"



// // int getT(int offset);
// // int getP(int offset);
// // int getH(int offset);
// // int8_t get_calib_data(struct bme680_dev *dev);
// // float calc_temperature(uint32_t temp_adc, struct bme680_dev *dev);
// // float calc_pressure(uint32_t pres_adc, const struct bme680_dev *dev);
// // float calc_humidity(uint16_t hum_adc, const struct bme680_dev *dev);


uint8_t coeff_array[BME680_COEFF_SIZE] = { 0 };
struct bme680_dev dev;
uint32_t T = 495616;
uint32_t H = 17152;
uint32_t P = 389120;

int main()
{

printf("Starting conversion. Sizeof(dev) is %d, 0x%X\n",sizeof(struct bme680_dev),sizeof(struct bme680_dev));

//struct bme680_dev dev;
bme680_init(&dev);
get_calib_data(&dev);

printf("\nTemperature is %f",calc_temperature(T, &dev));
//printf("\nHumidity is %f",calc_humidity(H, &dev));
//printf("\nPressure is %f",calc_pressure(P, &dev));

return 0;
}

// int getT(int offset)
// {
//    int T = 0;
//    FILE *fp;
//    char buff[255];//creating char array to store data of file
//    char *ptr;
//    fp = fopen("Example.csv", "r");
//    for(int i = 0; i < (326 + (offset*101)); i++)
//    {
// 	     fscanf(fp, "%s", buff);

//    }
//    T = strtoul(buff,&ptr,10);
//    fclose(fp);
//    return T;
// }

// int getH(int offset)
// {
//    int H = 0;
//    FILE *fp;
//    char buff[255];//creating char array to store data of file
//    char *ptr;
//    fp = fopen("Example.csv", "r");
//    for(int i = 0; i < (327 + (offset*101)); i++)
//    {
// 	     fscanf(fp, "%s", buff);

//    }
//    H = strtoul(buff,&ptr,10);

//    fclose(fp);
//    return H;
// }

// int getP(int offset)
// {
//    int P = 0;
//    FILE *fp;
//    char buff[255];//creating char array to store data of file
//    char *ptr;
//    fp = fopen("Example.csv", "r");
//    for(int i = 0; i < (325 + (offset*101)); i++)
//    {
// 	     fscanf(fp, "%s", buff);

//    }
//    P = strtoul(buff,&ptr,10);

//    fclose(fp);
//    return P;
// }
