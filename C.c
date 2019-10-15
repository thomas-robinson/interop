#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <C.h>



void routine (struct cstruct * f)
{
        struct cstruct ff;
        int i;
        printf("In C routine \n");
        int aa = 1000;
        char mes [100];

                ff.a = aa;
                strcpy(mes,"abcdefghijklmnopqrstuvwxyz0123456789");
                strcpy(ff.message,mes);

        *f = ff;
}


void array (int i)
{
        int a[3];
        int n;
        for (n=0;n<3;n++){
                a[n] = n+100;
        }
        i = a;
        printf("%d %d %d \n",a[0],a[1],a[2]);
}
