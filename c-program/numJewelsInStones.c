#include <stdio.h>
int numJewelsInStones(char * J, char * S);
int main()
{
  	char J[2]={'a','A'};
  	char S[7]={'a','A','A','b','b','b','b'};
  	numJewelsInStones(&J,&S);
	return 0;
	   
}
int numJewelsInStones(char * J, char * S){
    int i,j;
    int count=0;
    for(i=0;i<strlen(S);i++){
    	for(j=0;j<strlen(J);j++){
    		if(S[i]==J[j]){
    			count++;
			}
		}
	}
	printf("%d",count);
    return count;
}

