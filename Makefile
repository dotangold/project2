CC=gcc
CFLAGS=-I.
#DEPS = Project2.h
OBJ = Project2.o 
EXEC = Project2

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
	
.PHONY: clean

clean:
	rm -f *.o $(EXEC)
