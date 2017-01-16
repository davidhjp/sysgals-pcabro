#include <stdio.h>
static int b[40];
static int* hp = 0;

void push(int i) {
	if (hp == 0)
		hp = b;
	*hp = i;
	hp++;
}

int pop() {
	if (hp == b)
		return 0;
	else {
		return *(--hp);
	}
}

