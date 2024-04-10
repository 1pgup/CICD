CC=gcc
CFLAGS=-Wall -Wextra -Werror

TARGET=s21_cat

SRCS=cat.c cat_realization.c ../common/input_data.c ../common/test.c ../common/check_files.c ../grep/grep_realization.c

OBJS=$(SRCS:.c=.o)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

all: s21_cat

rebuild: clean all

s21_cat: $(OBJS)
	$(CC) $(CFLAGS) $^ -o $(TARGET)
	rm -f $(OBJS)

test: s21_cat
	./$(TARGET) test_file.txt > /dev/null
	./$(TARGET) -b test_file.txt > /dev/null
	./$(TARGET) -e test_file.txt > /dev/null
	./$(TARGET) -n test_file.txt > /dev/null
	./$(TARGET) -s test_file.txt > /dev/null
	./$(TARGET) -t test_file.txt > /dev/null
