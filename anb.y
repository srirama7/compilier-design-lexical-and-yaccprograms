%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL

%%
stmt:A A A A A A A A A A S B NL {printf("valid string\n");exit(0);}
;
S:S A
|
;

%%

int yyerror()
{
printf("invalid string\n");
exit(0);
}

int main()
{
printf("Enter the string\n");
yyparse();
}