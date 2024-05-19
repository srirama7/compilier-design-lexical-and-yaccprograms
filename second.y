%{
#include<stdio.h>
#include<stdlib.h>
int count=0;
%}

%token IF RELOP S NO ID NL

%%
stmt:if_stmt NL {printf("no of statements=%d\n",count);exit(0);}
;

if_stmt:IF '(' cond ')' '{' if_stmt '}' {count++;}
  |S
  ;

cond:x RELOP x
  ;

x:ID
  |NO
  ;


%%

int yyerror()
{
printf("invalid statement\n");
exit(0);
}

int main()
{
printf("enter the statement\n");
yyparse();
}