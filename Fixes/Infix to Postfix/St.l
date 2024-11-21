%{ 
#include <stdio.h>    
#include "Sty.tab.h" 
%} 

D   [0-9]
NUM {D}+
ID  {L}({L}|{D})*


%% 
{NUM}  { yylval = atoi(yytext); return NUM; } 
\n      return '\n';  
.       return *yytext;  

%% 
int yywrap() { 
    return 1; 
}
