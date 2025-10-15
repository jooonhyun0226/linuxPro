OBJECTS = memo.o calendar.o main.o
CFLAGS = -Wall -Wextra
TARGET = diary
 
all: $(TARGET)
 
$(TARGET): memo.o calendar.o main.o
	$(CC) –o $@ $^
 
clean:
	$(RM) *.o $(TARGET)

