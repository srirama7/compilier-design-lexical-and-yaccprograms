%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUMBER ID NL
%left '+''-'
%left '*''/'
%%
stmt:exp NL {printf("valid exp\n");exit(0);};

exp: exp'+'exp
  | exp'-'exp
  |exp'*'exp
  |exp'/'exp
  |NUMBER
  |ID
  ;
%%

int yyerror()
{
printf("invalid expression");
exit(0);
}

int main()
{
printf("enter the statements");
yyparse();
}