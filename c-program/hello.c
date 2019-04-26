/*************************************************************************
	> File Name: hello.c
# Author: zhangyuanbo
# mail: love.zyb@outlook.com
	> Created Time: Fri 26 Apr 2019 09:58:43 AM EDT
 ************************************************************************/

#include<stdio.h>

void ReverseString(char* s,int from,int to)
{
	while(from<to)
	{
		char t=s[from];
		s[from++]=s[to];
		s[to--]=t;
	}
}


void LeftRotateString(char* s,int n,int m)
{
	m%=n;
	ReverseString(s,0,m-1);
	ReverseString(s,m,n-1);
	ReverseString(s,0,n-1);

}
int main()
{
	char s[]="hello";
	ReverseString(s,2,4);
	printf("%s\n",s);

	
	LeftRotateString(s,2,4);

	printf("%s\n",s);
	printf("hello world!");
	return 0;
}


