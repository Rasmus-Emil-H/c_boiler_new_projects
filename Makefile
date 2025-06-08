C = gcc
CFLAGS = -Wall -Wextra -O2

SRC = src/main.c 
OBJ = $(SRC:.c=.o)
ENTRY = server

all: server

again: clean server run

server: $(OBJ)
	$(CC) $(CFLAGS) -o $(ENTRY) $(OBJ)

run: $(ENTRY)
	./$(ENTRY)

clean:
	rm -f $(ENTRY) $(OBJ)
