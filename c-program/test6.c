#include <stdio.h>
int main()
{
 	double foot;
 	double inch;
 	scanf("%lf %lf",&foot,&inch);
 	printf("身高是%f 米.\n",(foot+inch/12.0)*0.3048);
  	return 0;
}
