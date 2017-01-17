CC=gcc
CFLAGS=-Wall -c
LIBS=-lncurses 
TARGET=build/mine
SOURCES=$(wildcard src/*.c)
OBJECTS=$(patsubst %.c, %.o, $(SOURCES))

all: $(TARGET)

$(TARGET): $(OBJECTS)
	@mkdir -p build
	$(CC) $(LIBS) -o $@ $(OBJECTS)
$(OBJECTS): $(SOURCES)

.PHONY: clean

clean: 
	rm -rf $(OBJECTS) $(TARGET)
