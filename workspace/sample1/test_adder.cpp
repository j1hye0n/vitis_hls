#include <stdio.h>

void example(char *a, char *b, char *c);

int main()
{
    char a;
    char b;
    char c;
    char d;
    char sw_result;

    printf("HLS AXI-Lite Exmaple\n");
    printf("Function c += a+ b\n");
    printf("Initial values a = 5, b = 10, c = 0\n");

    a=5;
    b=10;
    c=0;
    d=0;

    example(&a,&b,&c);
    d += a+b;

    printf("HW reuslt = %d\n",c);
    printf("SW result = %d\n",d);

    if (d==c){
        printf("Success SW and HW results match\n");
        return 0;
    }
    else {
        printf("ERROR SW and HW results mismatch\n");
        return 1;
    }
}