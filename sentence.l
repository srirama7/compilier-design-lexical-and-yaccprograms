%{
#include<stdio.h>
#include<stdlib.h>
int is_simple=1;
%}

%%
[ \t\n][aA][nN][dD][ \t\n]+ {is_simple=0;}
[ \t\n][bB][uU][tT][ \t\n]+ {is_simple=0;}
[ \t\n][oO][rR][ \t\n]+ {is_simple=0;}
. {;}

// be careful with the above code if dont put space after[ \t\n] it wont work properly
%%

int yywrap()
{
return 1;
}

int main()
{
  printf("Enter the string.. at end press Ctrl d\n");

  yylex();
  if(is_simple==1)
  {
    printf("The string is simple\n");
  }
  else
  {
    printf("The string is complex\n");
  }

}


