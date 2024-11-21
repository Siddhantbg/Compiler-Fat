%{
#include <stdio.h>

%}

%%
[a-zA-Z0-9]+@vitstudent.ac.in { printf("VIT Mail\n"); }
[a-zA-Z0-9]+@gmail.com        { printf("Gmail Mail\n"); }
[a-zA-Z0-9]+@yahoo.com        { printf("Yahoo Mail\n"); }
[a-zA-Z0-9]+@outlook.com        { printf("Outlook Mail\n"); }
[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,4} { printf("Invalid Mail\n"); }
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