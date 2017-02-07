CC=gcc

LIB=buffer.c config.c fib.c
LIB_Q=buffer.c config_q.c fib.c
FIB_DIR=fib/

pcabro: clock_domains.c main.c runtime.c fib/*.c
	sed -i 's/\(INITIALIZER\|BARRIER\)[ ]*0/\1 1/g' sysgals_config.h
	sed -i '3i#include "fib/pcabro.h"' sysgals_usrinc.h
	$(CC) -I. $(addprefix $(FIB_DIR), $(LIB)) *.c -o pcabro

clock_domains.c: pcabro.sysj
	sysjc --sysgals C --verbose -- $^

clock_domains_q.c: pcabro_q.sysj
	sysjc --sysgals C --verbose -- $^
	mv clock_domains.c clock_domains_q.c

pcabro_q: clock_domains_q.c main.c runtime.c fib/*.c
	sed -i 's/\(INITIALIZER\|BARRIER\)[ ]*0/\1 1/g' sysgals_config.h
	sed -i '3i#include "fib/pcabro.h"' sysgals_usrinc.h
	$(CC) -I. $(addprefix $(FIB_DIR), $(LIB_Q)) *.c -o pcabro

clean:
	rm -rf *.c a.out *.h *.class *.java


