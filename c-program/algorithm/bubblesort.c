/*************************************************************************
	> File Name: bubblesort.c
	> Author: ma6174
	> Mail: ma6174@163.com 
	> Created Time: Tue 16 Apr 2019 11:30:42 AM EDT
 ************************************************************************/

#include <stdio.h>
void bubble_sort(int arr[], int len) {
	    int i, j, temp,flag;
		for (i = 0; i < len - 1; i++)
			{
				flag=1;
				 for (j = 0; j < len - 1 - i; j++)
				 {
			            if (arr[j] > arr[j + 1]) {
			                temp = arr[j];
			                arr[j] = arr[j + 1];
			                arr[j + 1] = temp;
							continue;
						}
						flag=0;
				 }
				 if(flag==1)
					 break;
			}
}
int main() {
	    int arr[] = { 22, 34, 3, 32, 82, 55, 89, 50, 37, 5, 64, 35, 9, 70 };
	    int len = (int) sizeof(arr) / sizeof(*arr);
		bubble_sort(arr, len);
		int i;
		for (i = 0; i < len; i++)
		      printf("%d \n", arr[i]);
		 return 0;
}
