%option noyywrap

%{
#include "program.tab.h"
%}

letter [a-z A-Z]
%%
"I" {printf("%s ---> is Noun",yytext);return(NOUN);}

%%

