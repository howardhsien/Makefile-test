CC=gcc
CFLAGS+= -I./inc
C-OBJECTS = $(wildcard *.c)
O-OBJECTS = $(patsubst %.c, %.o,$(C-OBJECTS))
$(info C-OBJECTS = $(C-OBJECTS))
$(info O-OBJECTS = $(O-OBJECTS))
all: main

main: $(O-OBJECTS)
	$(CC) ${CFLAGS} $^ -o main.out

.c.o:
	${CC} ${CFLAGS} -c $< 
#print: 
#	${CC} ${CFLAGS} print.c -c
#readsth:
#	${CC} ${CFLAGS} readsth.c -c

clean:
	rm -f *.o *.out
