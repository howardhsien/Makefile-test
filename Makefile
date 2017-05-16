CC=gcc
CFLAGS+= -I./inc
all: main

main: print readsth
	$(CC) ${CFLAGS} readsth.o print.o main.c -o main.out

print: 
	${CC} ${CFLAGS} print.c -c
readsth:
	${CC} ${CFLAGS} readsth.c -c

clean:
	rm -f *.o *.out
