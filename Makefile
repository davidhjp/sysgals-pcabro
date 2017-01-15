
all:
	sysjc --sysgals C -- pcabro.sysj
	gcc fib/*.c *.c

clean:
	rm -rf *.c a.out *.h
