%{
#include<stdio.h>
void yyerror(char *s);
int yylex();

%}

%token PORNOUN  VERB1 VERB2 VERB3 OBJECT1 OBJECT2 OBJECT3
%start s

%%
s: PORNOUN  VERB1 VERB2 VERB3 OBJECT1 OBJECT2 OBJECT3
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