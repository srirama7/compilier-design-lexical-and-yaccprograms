%{
#include<stdio.h>
#include<stdlib.h>
%}

%token SP CM SC ID NL INT FLOAT CHAR 

%%
smtp:variable SP alpha SC {printf("valid identifier\n");exit(0);}
;

variable:INT
  |FLOAT
  |CHAR
  ;

alpha:alpha SP CM SP ID
  |alpha SP ID
  |alpha SP CM ID
  |alpha CM SP ID
  |ID
  ;

%%

int yyerror()
{
printf("invalid iterations\n");
exit(0);
}

int main()
{
printf("enter a iterations\n");
yyparse();
}
  