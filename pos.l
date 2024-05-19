%{
#include<stdlib.h>
#include<stdio.h>
int pos=0;
int posf=0;
int neg=0;
int negf=0;
%}

%%
[+]?[0-9] {pos++;}
[-][0-9] {neg++;}
[+]?[0-9]*\.[0-9] {posf++;}
[-][0-9]*\.[0-9] {negf++;}
. {;}

%%

int yywrap()
{
return 1;
}

int main(int argc,char *argv[])
{
printf("Enter or press Ctrl d\n");
if(argc!=2)  
{
printf("Usage: ./pos filename\n");
exit(0);
}
yylex();
yyin=fopen(argv[1],"r");
printf("positive =%d\n",pos);
printf("negative =%d\n",neg);
printf("posfractive=%d\n",posf);
printf("negfractive=%d\n",negf);

}