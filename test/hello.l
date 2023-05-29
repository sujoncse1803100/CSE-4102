%option noyywrap

%{       
    //Here consists of header file and global variable..   
%}

letter [a-zA-Z]
digit [0-9]
delim [ \t]
under [_]
num {digit}{digit}*
float_num (num)*[.](num)
%%
 //Here consists of Regular Expression..

"I" {printf("%s -> Nourintf("%s -> Obn\n", yytext);}
"Eat" {printf("%s -> Verb\n", yytext);}
"Rice" {pject\n", yytext);}
"RUET"|"KUET" {printf("%s -> University\n", yytext);}
"CSE"|"EEE" {printf("%s -> Department\n", yytext);}

([1])(6|7|8|9)|([2])([0]) {printf("%s -> Series\n", yytext);}
([0])([0-9])|([1])([0]) {printf("%s -> Dept\n", yytext);}
([0])([0])([1])|([1])(0|1|2|3|4|5|6|7|8)(0) {printf("%s -> Dept\n", yytext);}

([0-9])([0-9]) {printf("%s -> Ser\n", yytext);}
[0-9]+ {printf("%s -> Number\n", yytext);}
"int"|"float" {printf("%s ->DataType\n", yytext);}
"main" {printf("%s ->MainFunction\n", yytext);}
"(" {printf("%s ->FirstParenthessis\n", yytext);}
")" {printf("%s ->SecondParenthesis\n", yytext);}
"{" {printf("%s ->FirstBrace\n", yytext);}
"}" {printf("%s ->secondBrace\n", yytext);}
({letter}|{under})({letter}|{digit}|{under})* {printf("%s -> Identifier\n", yytext);}
" " {printf("%s ->space\n", yytext);}
. {printf("%s -> Unknown Character\n", yytext);}

%%
int main()
{
    yylex();
    return 0;
}