#include <stdio.h>
int main() {
	const int AMOUNT=100;
	int price=0;
	printf("��������:");
	scanf("%d",&price);

	int change=AMOUNT-price;
//	 AMOUNT=12
	printf("����%dԪ",change);
	return 0;
}
