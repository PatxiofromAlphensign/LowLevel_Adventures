#include<stdio.h>
#include<stdlib.h>

typedef struct b1 {
	int b;
} b1;

void check(b1 *ckr,int expr) {
	switch(expr) {
		case(9):
			ckr->b = 1;
			break;
		case(10):
			ckr->b = 0;
			break;
	}

}

struct f_store {
	b1 (*n1)(b1*);
	int (*f)(b1 *, int);
};

int getlen(int ar[]) {
	int i= 0;
	int arr[] = {};
	while(ar) {i++; if (!ar[i]) break;}
	int *v = malloc(ar[0]);
	while(!v[i]) arr[i] = v[i];
	return i;
}

int main(int arg, char** argv) {
	extern void run();
	run();
	return 1;
}

