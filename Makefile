# a very simple Makefile

bessel: bessel.cpp
	g++ -obessel bessel.cpp

clean:
	rm -f bessel *dat
