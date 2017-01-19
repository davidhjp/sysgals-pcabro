CC=gcc

all:a.out

a.out: clock_domains.c main.c runtime.c fib/*.c
	sed -i 's/\(INITIALIZER\|BARRIER\)[ ]*0/\1 1/g' sysgals_config.h
	sed -i '3i#include "fib/pcabro.h"' sysgals_usrinc.h
	$(CC) -I. fib/*.c *.c 

clock_domains.c: pcabro.sysj
	sysjc --sysgals C --verbose -- $^

clean:
	rm -rf *.c a.out *.h *.class *.java


