#makefile for compling the C sources and linking libraries
CC = gcc
CFLAGS=-I.
DEPS = sieve.c
OBJ = sieve.o 
FLAGS = none
sieve: $(OBJ)
	gcc -o $@ $^ $(CFLAGS)
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

all : sieve.c
	gcc sieve.c -o sieve

sieve.o :sieve.c sieve.h main.c
	gcc sieve.c -o 

clean :
	rm -rf *.o

 



TARGET = prog
LIBS = -lm
CC = gcc
CFLAGS = -g -Wall

.PHONY: default all clean

default: $(TARGET)
all: default

OBJECTS = $(patsubst %.c, %.o, $(wildcard *.c))
HEADERS = $(wildcard *.h)

%.o: %.c $(HEADERS)
    $(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
    $(CC) $(OBJECTS) -Wall $(LIBS) -o $@

clean:
    -rm -f *.o
    -rm -f $(TARGET)







CC=gcc 
CFLAGS=-Wall

all: sieve
sieve: sieve.o
sieve.o: sieve.c 
	

clean:
    rm -f sieve sieve.o
run: sieve
    ./sieve



all: sieve

sieve: sieve.o
	 gcc -o sieve sieve.o

sieve.o: sieve.c
	 gcc -c sieve.c
     
clean:
	 rm sieve.o sieve


=========================================================
CC = gcc
FLAGS = none
all: sieve

sieve: sieve.o
         gcc -o sieve sieve.o

sieve.o: sieve.c
         gcc -c sieve.c

clean:
         rm sieve.o sieve

