%{
#include<stdlib.h>
#include<stdio.h>
int pc=0;
int sp=0;
%}

%%
"printf" {fprintf(yyout,"writef");pc++;}
"scanf" {fprintf(yyout,"readf");sp++;}
. {;}


%%

int yywrap()
{
return 1;
}

int main(int argc,char *argv[])
{
printf("Enter the string or press ctrl +D");
if(argc!=3)
{
printf("Usage: ./scanf filename\n");
exit(0);
}
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
printf("no of scanf=%d",sp);
printf("no of printf=%d",pc);
}