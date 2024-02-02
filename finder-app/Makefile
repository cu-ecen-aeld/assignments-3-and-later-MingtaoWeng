APP_NAME=writer
CC=$(CROSS_COMPILE)gcc
OBJ=writer.o 
CFLAGS=

%.o: %.c
	$(CC) -c -o $@ $<

$(APP_NAME): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -f $(OBJ) $(APP_NAME) 

