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


int main(){
    yyparse();
    printf("\nparsing finished");
    return 0;
}

void yyerror(char *s){
    fprintf(stderr,"\nError : %s",s);
}