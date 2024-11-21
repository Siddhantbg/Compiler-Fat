%{
    #include<stdio.h>
    #include"Sty.tab.h"
    int yylex(void);
    void yyerror(const char *);
%}

%token FOR ID NUM

%%

S   : FOR '(' ID '=' F ';' ID RO F ';' ID IN ')' '{' ID '=' F OP F ';' '}'       { printf("Valid Statement.\n"); }

IN  : '+' '+' 
    | '-' '-'
RO  : '>' | '<' | '<' '=' | '>' '=' | '=' '=';
OP  : '+' | '-' | '*' | '/';
F   : ID | NUM;

%%

int main() {
    printf("Enter the code:\n");
    return yyparse();
}

void yyerror(const char *err) {
    fprintf(stderr, "Error: %s\n", err);
}
