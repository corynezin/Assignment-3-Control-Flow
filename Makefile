build:
	gcc uparrow/uparrow.c -o uparrow.out || true
	gcc collatz/collatz.c -o collatz.out || true
	gcc complex/complex.c -o complex.out || true
	gcc median/median.c -o median.out || true
	gcc pythagorean/pythagorean.c -o pythagorean.out || true

	cd mandelbrot && make && cd ..

run: build
	./uparrow.out
	./collatz.out
	./complex.out
	./median.out
	./pythagorean.out
	cd mandelbrot && make test && cd ..

clean:
	rm *.out
