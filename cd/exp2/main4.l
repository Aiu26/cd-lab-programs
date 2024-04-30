%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-z] {printf("\n%s : lowercase", yytext);}
[A-Z] {printf("\n%s : uppercase", yytext);}
\n {return 0;}
%%

int main(){
	yylex();
	return 0;
}