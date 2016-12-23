TEST_OBJS = hello-world.o
TEST_SRCS = $(TEST_OBJS:.o=.c)
TEST_NAME = hello

$(TEST_NAME): $(TEST_OBJS)
	$(CC) -o $@ $^ $(LDCFLAGS) -DDEBUG_DISABLE
run:
	@./$(TEST_NAME)

clean:
	@rm -f *.o $(TEST_NAME)
