#include <stdio.h>
int main()
{
 	double foot;
 	double inch;
 	scanf("%lf %lf",&foot,&inch);
 	printf("�����%f ��.\n",(foot+inch/12.0)*0.3048);
  	return 0;
}
