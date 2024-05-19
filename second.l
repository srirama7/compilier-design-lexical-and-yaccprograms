%{
#include "y.tab.h"
%}

%%
[Ss][0-9]* {return S;}
[\n] {return NL;}
[a-zA-Z][a-zA-Z0-9_]* {return ID;}
[0-9]+ {return NO;}
">"|"<"|">="|"<="|"==" {return RELOP;}
"if" {return IF;}
. {return yytext[0];}
%%

