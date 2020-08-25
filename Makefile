MODULE=stm32loader

all: stm32ld.o main.o serial_posix.o
	$(CC) stm32ld.c main.c serial_posix.c -o $(MODULE)

install: $(MODULE)
	install -m 755 $(MODULE) /usr/bin
	
clean:
	rm -rf *.o
	rm -rf $(MODULE)
