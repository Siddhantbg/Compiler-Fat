%{
#include <stdio.h>
#include "Sty.tab.h"
%}

D   [0-9]
NUM {D}+
ASO [-+]


%%
{NUM}       {yylval = atoi(yytext); return NUM;}
{ASO}       return *yytext;
PA          return *yytext;

%%

int yywrap(){
    return 1;
}