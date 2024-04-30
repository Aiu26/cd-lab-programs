%{
  #include<stdio.h>
%}

DIGIT[0-9]
LETTER[a-zA-Z_]
ID {LETTER}({LETTER}|{DIGIT})*

%%
"integer" {printf("Keyword: %s\n",yytext);}
"read" {printf("Keyword: %s\n",yytext);}
"if"|"while"|"do"|"then"|"display"|"step" {printf("Keyword: %s\n",yytext);}
{DIGIT}+ {printf("Integer: %s\n",yytext);}
{ID} {printf("Identifier: %s\n",yytext);}
"==" {printf("Equal\n");}
">=" {printf("Greater than or equal\n");}
"<=" {printf("Lesser than or equal\n");}
[><] {printf("Greater than or Lesser than\n");}
[,(){};] {printf("%s\n",yytext);}
%%

int yywrap(){}
int main(){
 	FILE *fp;
	fp = fopen("main1.txt","r");
	if(!fp){
		fprintf(stderr, "Error openening file\n");
		return 1;
	}
	yyin = fp;
	yylex();
	fclose(fp);
	return 0;
}

