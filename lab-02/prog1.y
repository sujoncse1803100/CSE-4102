%{
#include<stdio.h>
void yyerror(char *s);
int yylex();
%}

%token NOUN VERB OBJECT
%start s

%%
s: NOUN VERB OBJECT 
    ;
%%

int main()
{
  yyparse();
  printf("Parsing Finished");
  return 0;
}

void yyerror(char *s) //error thakle yyparse call kore ei function
{
    fprintf(stderr, "error: %s\n", s);
}