%{
#include<stdio.h>
#include<stdlib.h>
int com=0;
%}

%s COMMENT

%%
"//".* {com++;}
"/*" {BEGIN COMMENT ;}
<COMMENT>\n {com++;}
<COMMENT>"*/" {BEGIN 0;com++;}
<COMMENT>. {;}
%%

int yywrap()
{
return 1;
}

int main(int argc,char *argv[])
{
printf("Enter the string.. at end press Ctrl d\n");
if(argc!=3)
{
printf("Usage: ./com filename\n");
exit(0);
}
yyin=fopen(argv[1],"r");
yyout=fopen(argv[2],"w");
yylex();
printf(yyout,"No of comments=%d\n",com);
printf("No of comments=%d\n",com);
}
