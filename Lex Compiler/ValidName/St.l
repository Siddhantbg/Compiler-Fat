%{
#include <stdio.h>
%}

%%
[A-Z][a-zA-Z0-9_@]*    { printf("VALID NAME\n"); }
.*                  { printf("INVALID NAME\n"); }
%%

int main(){
    char d[100];
    scanf("%s",d);
    yy_scan_string(d);
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}