%option noyywrap
%{
	#include<stdio.h>
%}

%% 
[A-Z]+ {printf("\n%s : uppercase letters", yytext);}
[a-z]+ {printf("\n%s : lowercase letters" ,yytext);}
[0-9]+ {printf("\n%s : numbers", yytext);}
. {printf("\n%s: other characters", yytext);}
\n {return 0;}
%%

int main(){
	yylex();
	return 0;
}