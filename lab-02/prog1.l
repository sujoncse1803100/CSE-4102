%option noyywrap

%{
// #include "prog1.tab.h"
%}

digit [0-9]
digit1 -[0-9]+
letter_sm [a-z]
letter_ca [A-Z]
dot [.]

%%
"RUET" {printf("%s --> University \n",yytext);}
"CSE"|"EEE" {printf("%s --> Department \n",yytext);}
{digit}{digit} {printf("%s --> Series \n",yytext);} 
{digit}{digit}* {printf("%s --> Any number \n",yytext);} 
{digit1} {printf("%s --> Negatie number \n",yytext);} 
{digit1}*{digit}*{dot}{digit}* {printf("%s --> Float number \n",yytext);} 
{letter_sm}*{letter_ca}*{digit}* {printf("%s --> boom ",yytext);}
%%

int main()
{
  yylex();
  return 0;
}
