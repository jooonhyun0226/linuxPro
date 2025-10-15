 CC     = gcc
 CFLAGS = -Wall –Wextra
 TARGET = diary

 all: $(TARGET)
:wq
 $(TARGET): memo.ocalendar.o main.o
 $(CC) –o $(TARGET) memo.ocalendar.o main.o
 memo.o: memo.c
 $(CC) $(CFLAGS) –c –o memo.omemo.c
 calendar.o: calendar.c
 $(CC) $(CFLAGS) -c –o calendar.o calendar.c
 main.o: main.c
 $(CC) $(CFLAGS) –c –o main.omain.c
 clean:
 rm–rf*.o $(TARGET)

