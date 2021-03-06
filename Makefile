CC = g++

ego: node.h node.cpp helpers.cpp queue.cpp enums.h scrivener.cpp scheduler.cpp main.cpp
	$(CC) node.cpp queue.cpp scrivener.cpp scheduler.cpp main.cpp -o ego

test_queue: testqueue.cpp queue.cpp node.h node.cpp
	$(CC) testqueue.cpp -o test_queue

clean:
	rm -Rf *.o test_* ego
