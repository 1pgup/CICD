CC=gcc
CFLAGS=-Wall -Wextra -Werror

TARGET=s21_grep

SRCS=grep.c grep_realization.c ../common/input_data.c ../common/test.c ../common/check_files.c ../cat/cat_realization.c

OBJS=$(SRCS:.c=.o)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)

all: s21_grep

rebuild: clean all

s21_grep: $(OBJS)
	$(CC) $(CFLAGS) $^ -o $(TARGET)
	rm -f $(OBJS)

test: s21_grep
	./$(TARGET) -e "1" test_file.txt > /dev/null
	./$(TARGET) -i "a" test_file.txt > /dev/null
	./$(TARGET) -v "1" test_file.txt > /dev/null
	./$(TARGET) -c "1" test_file.txt > /dev/null
	./$(TARGET) -l "1" test_file.txt test_templ.txt > /dev/null
	./$(TARGET) -n "1" test_file.txt > /dev/null
	./$(TARGET) -h "1" test_file.txt test_templ.txt > /dev/null
	./$(TARGET) -s "1" test_file.txt aa > /dev/null
	./$(TARGET) -f test_templ test_file.txt > /dev/null
	./$(TARGET) -o "11" test_file.txt > /dev/null
