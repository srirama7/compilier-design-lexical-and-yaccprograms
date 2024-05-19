%{
#include<stdio.h>
#include<stdlib.h>
%}

%token NUMBER NL
%left '+''-'
%left '*''/'

%%
stmt:exp NL {printf("%d",$1);exit(0);}
;
exp:exp'+'exp {$$=$1+$3;}
  |exp'-'exp {$$=$1-$3;}
  |exp'*'exp {$$=$1*$3;}
  |NUMBER {$$=$1;}
  ;
%%

int yyerror()
{
printf("invalid statement\n");
exit(0);
}

int main()
{
printf("enter the statements");
yyparse();
}