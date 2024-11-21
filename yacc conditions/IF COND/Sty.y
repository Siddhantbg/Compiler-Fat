%{
#include <stdio.h>
#include "Sty.tab.h"
void yyerror(const char *);
int yylex(void);
%}


%token IF ID NUM  

%%

S   :  IF '(' F RO F ')' '{' ID '=' F OP F ';' '}'  { printf("VALID HAI BHAI!!!"); }
F   :  ID | NUM
RO  : '>' | '<' | '>' '=' | '<' '='
OP  : '+' | '-' | '*' | '/'

%%

int main(){
    printf("Enter:\n");
    return yyparse();
}

void yyerror(const char *s){
    fprintf(stderr,"%s\n",s);
}

