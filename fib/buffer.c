#include <stdio.h>

#define SIZE 40
static int b[SIZE];
static int* hp = 0;

void push(int i) {
	if(hp - b < SIZE) {
		if (hp == 0)
			hp = b;
		*hp = i;
		hp++;
	}
}

int pop() {
	if (hp == b)
		return 0;
	else {
		return *(--hp);
	}
}

int isEmpty() {
	return hp == b;
}

int isFull() {
	return hp == (b + SIZE);
}
