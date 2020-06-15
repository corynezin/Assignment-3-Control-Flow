build:
	gcc variables/variables.c -o variables.out || true
	gcc relations/relations.c -o relations.out || true
	gcc factorial/factorial.c -o factorial.out || true
	gcc temperature/temperature.c -o temperature.out || true
	gcc quadratic/quadratic.c -o quadratic.out -lm || true
	gcc upper/upper.c -o upper.out || true
	gcc binary/binary.c -o binary.out || true

run: build
	./variables.out
	./relations.out
	./factorial.out
	./temperature.out
	./quadratic.out
	./upper.out
	./binary.out
