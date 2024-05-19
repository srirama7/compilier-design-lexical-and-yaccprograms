%{
#include<stdio.h>
#include<stdlib.h>
%}

%token DIGITS LETTER UND NL 

%%
stmt:variable NL {printf("valid identifiers");exit(0);}
;

variable:LETTER alpha
;

alpha:DIGITS alpha
  |LETTER alpha
  |UND alpha
  |DIGITS
  |LETTER
  |UND
  ;

%%

int yyerror()
{
printf("invalid variable\n");
exit(0);
}

int main()
{
printf("the valid identifiers are \n");
yyparse();
}
