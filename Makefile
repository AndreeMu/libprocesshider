all: libprocesshider.so

libprocesshider.so: processhider.c
	gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl
	gcc -Wall -fPIC -shared -o libprocesshider.so processhiderr.c -ldl
	gcc -Wall -fPIC -shared -o libprocesshider.so processhiderrr.c -ldl

.PHONY clean:
	rm -f libprocesshider.so
