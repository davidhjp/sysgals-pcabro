
all:
	sysjc --sysgals C -- pcabro.sysj
	sed -i 's/\(INITIALIZER\|BARRIER\)[ ]*0/\1 1/g' sysgals_config.h
	gcc -I. fib/*.c *.c 

clean:
	rm -rf *.c a.out *.h


