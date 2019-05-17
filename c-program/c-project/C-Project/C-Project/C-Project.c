// C-Project.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <stdio.h>
void merge(int arr[], int L, int M, int R) {
	int LEFT_SIZE = M-L;
	int RIGHT_SIZE = R-M+1;
	int left[LEFT_SIZE];
	int right[RIGHT_SIZE];
}
int main()
{
	char ac[] = { 0,1,2,3,4,5,6,7,9 };
	char *p = ac;
	//printf("p=%d\n",p);
	//printf("p+1=%d\n", p+1);

	//printf("*(p+1)=%d\n",*(p+1));

	int ai[] = { 0,1,2,3,4,5,6 };
	int *q = ai;
	for (int i = 0; i < sizeof(ai)/sizeof(int); i++)
	{
		printf("%d\n",p[i]);
	}
	q = p;
	//printf("q=%p\n", q);
	//printf("q+1=%p\n", q + 1);


	//printf("hello c\n");
}

 
