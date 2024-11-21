%{
#include <stdio.h>
#include "Sty.tab.h"
%}

D       [0-9]
NUM     {D}+
ASO     [=]
OP      [+\-*/]
ES      [\n]
PA      [()]

%% 
{NUM}   { yylval = atoi(yytext); return NUM; }
{ASO}   return *yytext;
{OP}    return *yytext;
{PA}    return *yytext;
{ES}    return 0;

%%

int yywrap(){
    return 1;
}