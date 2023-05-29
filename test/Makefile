main:
	flex test.l
	gcc lex.yy.c
	./a.exe

main2:
	bison -d program.y
	flex program.l
	gcc program.tab.c lex.yy.c
	./a.exe < input.txt