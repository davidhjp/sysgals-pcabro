
static int f1 = 1;
static int f2 = 0;

int get_next() {
	int t = f2;
	f2 = f1 + f2;
	f1 = t;
	return f2;
}

void fib_reset(){
	f1 = 1;
	f2 = 0;
}
