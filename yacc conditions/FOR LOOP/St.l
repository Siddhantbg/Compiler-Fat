%{
#include <stdio.h>
#include "Sty.tab.h"
%}

L   [a-zA-Z]
D   [0-9]
ID  {L}({L}|{D})*
NUM {D}+
ASO [=]
PO  [()]
SE  [;]
CB  [{}]
OP  [-+*/]
RO  [=<>]

%%
"for"   return FOR;
{ID}    return ID;
{NUM}   return NUM;
{ASO}   return *yytext;
{PO}    return *yytext;
{SE}    return *yytext;
{CB}    return *yytext;
{OP}    return *yytext;
{RO}    return *yytext;
%%

int yywrap(){
    return 1;
}