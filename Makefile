main: C.o
	ifort -I. C.o for.F90
	./a.out
C.o:
	icc -I. C.c -c
clean:
	rm -f *.o *.mod a.out 
