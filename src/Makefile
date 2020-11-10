
TARGET	=	clox

OBJS	=	main.o \
			chunk.o \
			debug.o \
			memory.o \
			value.o

COPTS	=	-g -Wall -Wextra

.c.o:
	gcc $(COPTS) -c $< -o $@

$(TARGET): $(OBJS)
	gcc $(COPTS) $(OBJS) -o $(TARGET)

clean:
	-rm -rf $(OBJS) $(TARGET)
