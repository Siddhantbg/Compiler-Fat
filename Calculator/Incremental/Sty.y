%{
#include <stdio.h>
#include "Sty.tab.h"
int yylex(void);
void yyerror(const char* err); 
%}

%token NUM
%%
S   : E            { printf("%d\n",$1); }
E   : F '+' '+'     { $$ =$1;  }
    | F '-' '-'     { $$=$1;   }
    |'-' '-' F      { $$=$3-1; }
    | '+' '+' F     { $$=$3+1; }
F   : NUM           { $$=$1;   }
%%

int main(){
    printf("Enter no.:");
    yyparse();
    return 0;
}

void yyerror(const char* err){
    fprintf(stderr,"%s\n",err);
}
