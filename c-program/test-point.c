#include <stdio.h>
void minmax(int *a,int len,int *min,int *max);
 
int main()
{
 	int a[]={1,2,3,4,5,6,7,8,111};
 	int min,max;
 	printf("%d\n",sizeof(a));
 	minmax(a,sizeof(a)/sizeof(a[0]),&min,&max);
 	printf("min=%d,max=%d\n",min,max);
 	printf("%d\n",a[0]);
 	int *p=&min;
 	printf("*p=%d\n",*p);
 	printf("p[0]=%d\n",p[0]);
 	
 	printf("*a=%d\n",*a);
 	
	return 0;
	   
}
void minmax(int *a,int len,int *min,int *max){
	int i=0;
	printf("minmax sizeof(a)=%d\n",sizeof(a[0]));
	a[0] =1000;
	*min=*max=a[0];
	for(i=0;i<len;i++){
		if(a[i]<*min){
			*min=a[i];
		}
		if(a[i]>*max){
			*max=a[i];
		}
	}
}

