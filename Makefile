all: build doczip

clean:
	-rm *.o a.out
build: myexe
	gcc -Wall collegemain.cc college.cc course.cc
doc:
	doxygen college
myexe: 
	gcc -Wall collegemain.cc college.cc course.cc
doczip:
	rip -r doxygen college

