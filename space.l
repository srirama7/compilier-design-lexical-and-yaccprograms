%{
#include<stdio.h>
#include<stdlib.h>
int s=0;
int w=0;
int c=0;
int l=0;
%}

WORD [^ \t\n,\.:]+
EOL [\n]
BLANK [ ]
%%
{WORD} {w++; c=c+yyleng;}
{BLANK} {s++;}
{EOL} {l++;}
%%

int yywrap()
{
return 1;
}

int main(int argc,char *argv[])
{
if(argc!=2)
{
printf("Usage: ./space filename\n");
exit(0);
}
yyin=fopen(argv[1],"r");
yylex();
printf("\nNoofcharacters=%d\n Noofwords=%d\n Noofspaces=%d\n Nolines=%d\n",c,w,s,l);
}