%option noyywrap

%{

%}

digit [0-9]
negD_igit -[0-9]+
neg_sign [-]
dot [.]
series [5-8]
st [1-1]

%%
"2"{digit}|"30" {printf("%s ---> 20-30 number matched ",yytext);}
{digit} {printf("%s ---> is only one Digit !!! ",yytext);}
{digit}{digit} {printf("%s ---> is only two Digit !!! ",yytext);}
{digit}{digit}* {printf("%s ---> is multiple Digit !!! ",yytext);}
{negD_igit}{digit}* {printf("%s ---> is Negative Number !!! ",yytext);}
{digit}{digit}*{dot}{digit}* {printf("%s ---> is Positive Float Numbr !!! ",yytext);}
{neg_sign}{digit}{digit}*{dot}{digit}* {printf("%s ---> is Negative Float Numbr !!! ",yytext);}
%%

int main(){
    yylex();
    return 0;
}