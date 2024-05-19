%{
#include "y.tab.h"
%}

%%
"int" {return INT;}
"char" {return CHAR;}
"float" {return FLOAT;}
[ ] {return SP;}
[a-zA-Z][a-zA-Z0-9]* {return ID;}
[,] {return CM;}
[;] {return SC;}

. {return yytext[0];}
%%

int yywrap()
{
return 1;
}