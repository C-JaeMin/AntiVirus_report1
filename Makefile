report1:	report1.l report1.y
		bison -d report1.y
		flex report1.l
		gcc -o $@ report1.tab.c lex.yy.c -lfl
