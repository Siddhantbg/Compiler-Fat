%{
#include <stdio.h>
#include "Sty.tab.h"
void yyerror(char *);
int yylex(void);
%}

%token ID
%%

S   : ID A B ID '\n'    { printf("Valid Gram\n"); }
    | ' '
A   : ID
    | ' '
B   : ID
    | ' '

%%

int main(){
    yyparse();
    return 0;
}

void yyerror(char *err) { 
    fprintf(stderr, "%s\n", err); 
}