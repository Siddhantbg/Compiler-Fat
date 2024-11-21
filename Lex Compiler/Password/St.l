%{
#include <stdio.h>
#include <stdbool.h>
bool dig=false; bool upper=false; bool sym=false; bool lower=false;
int len=0;
%}

%%
[0-9]+          { dig = true; len+=yyleng; }
[A-Z]+          { upper = true; len+=yyleng; }
[a-z]+          { lower = true; len+=yyleng; }
[^a-zA-Z0-9]+    { sym = true; len+=yyleng; }

%%

int main(){
    char s[100];
    scanf("%s",s);
    yy_scan_string(s);
    yylex();

    if(len<6){
        printf("Password is too short\n");
    }
    else if(upper && lower && !dig && !sym){
        printf("Password is too weak\n");
    }
    else if(upper && lower && dig && !sym){
        printf("Password is good\n");
    }
    else if(upper && lower && dig && sym){
        printf("Password is strong\n");
    }
    else{
        printf("Password rehende\n");
    }
    return 0;
}

int yywrap(){
    return 1;
}