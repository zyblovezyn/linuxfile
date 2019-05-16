#include <stdio.h>
void f(int* p);
void g(int k);
int main()
{
 	int i=6;
 	f(&i);
 	g(i);
	 return 0;
	   
}
void f(int *p){
	printf(" p=%d\n",p);
	printf(" *p=%d\n",*p);
	*p=26;
}
void g(int k){
	printf("%d\n",k);
}
