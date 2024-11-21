%{
#include <stdio.h>
#include "Sty.tab.h"
%}
  
L   [a-zA-Z]
D   [0-9]
NUM {D}+
ID  {L}({L}|{D})*
ASO [=]
RO  [=<>]
CB  [{}]
PA  [()]
OP  [+\-*/]
SE  [;]
%%

"if"    return (IF);
{ID}    return ID;
{NUM}   return NUM;
{ASO}   return *yytext;
{RO}    return *yytext;
{CB}    return *yytext;
{PA}    return *yytext;
{OP}    return *yytext;
{SE}    return *yytext;
%%

int yywrap(){
    return 1;
}