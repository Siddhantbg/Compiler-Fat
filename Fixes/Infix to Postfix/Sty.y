%{ 
#include <stdio.h> 
#include "Sty.tab.h"
int yylex(void); 
void yyerror(const char *s); 
%} 

%token NUM ID
%left '+' '-' 
%left '*' '/' 

%% 
S: E '\n'         { printf("\n"); }  

E: E '+' E        { printf("+"); } 
 | E '*' E        { printf("*"); } 
 | E '-' E        { printf("-"); } 
 | E '/' E        { printf("/"); } 
 | '(' E ')'      
 | NUM            { printf("%d", yylval); } 

%% 

int main() { 
    printf("Enter an expression:\n");
    yyparse(); 
    return 0;
} 

void yyerror(const char *s) { 
     fprintf(stderr,"Error: %s\n", s); 
}
