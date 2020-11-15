
PROJDIR	=	$(realpath $(CURDIR))
BINDIR	=	$(PROJDIR)/bin
LIBDIR	=	$(PROJDIR)/lib
SRCDIR	=	$(PROJDIR)/src
INCDIR	=	$(PROJDIR)/include

TARGET	=	$(BINDIR)/clox

OBJLST	=	main.o \
			chunk.o \
			debug.o \
			memory.o \
			value.o \
			vm.o \
			compiler.o \
			scanner.o \
			object.o \
			table.o

OBJS 	=	$(foreach item, $(OBJLST), $(addprefix $(LIBDIR)/, $(item)))
SRCS	=	$(foreach item, $(OBJLST:.o=.c), $(addprefix $(SRCDIR)/, $(item)))

ifeq ($(DEBUG),1)
	DOPTS	=	-g -Og
else
	DOPTS	=	-Ofast
endif

COPTS	=	-Wall -Wextra -I $(INCDIR)
CC		=	gcc

$(LIBDIR)%.o: $(SRCDIR)%.c
	$(CC) $(COPTS) $(DOPTS) -c $< -o $@


$(TARGET): $(OBJS)
	$(CC) $(COPTS) $(DOPTS) $^ -o $@

clean:
	-$(RM) $(OBJS) $(TARGET)

ech:
	@echo $(PROJDIR)"\n"$(OBJS)"\n"$(SRCS)"\n"
