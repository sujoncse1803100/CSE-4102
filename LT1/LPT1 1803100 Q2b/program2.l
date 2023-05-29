%option noyywrap

%{
#include "program2.tab.h"
%}

%%
"He" {printf("%s --> Pronoun \n",yytext); return(PORNOUN);}
"Loves" {printf("%s --> Verb1 \n",yytext); return(VERB1);}
"Dislikes" {printf("%s --> Verb2 \n",yytext); return(VERB2);}
"Likes" {printf("%s --> Verb3 \n",yytext); return(VERB3);}
"Pizza" {printf("%s --> Object1 \n",yytext); return(OBJECT1);}
"Apple" {printf("%s --> Object2 \n",yytext); return(OBJECT2);}
"Parata" {printf("%s --> Object3 \n",yytext); return(OBJECT3);}
%%

