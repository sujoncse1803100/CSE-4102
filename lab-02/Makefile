input = input.txt
output = output.txt


main:
	flex prog1.l
	gcc lex.yy.c
	./a.exe

main2:
	bison -d prog1.y
	flex prog2.l
	gcc prog1.tab.c lex.yy.c
	./a.exe < input.txt 