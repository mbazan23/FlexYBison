
TKN_NUM [0-9]+("."[0-9]+)?
TKN_ASIGN "="
TKN_PTOCOMA ";"
TKN_ID [a-zA-z][a-zA-Z0-9]*un
TKN_MULT "*"
TKN_DIV "/"
TKN_MAS "+"
TKN_MENOS "-"
TKN_PAA "("
TKN_PAC ")"

%%

{DIGITO}+ {printf("Encontrado TKN_NUM_ENTERO: %d",atoi(yytext));}
{DIGITO}+"."{DIGITO}+ {printf("Encontrado TKN_NUM_REAL: %f",atof(yytext));}
"=" {printf("Encontrado TKN_ASIGN: %s",yytext);}
";" {printf("Encontrado TKN_PTOCOMA: %s",yytext);}
"*" {printf("Encontrado TKN_MULT: %s",yytext);}
"/" {printf("Encontrado TKN_DIV: %s",yytext);}
"+" {printf("Encontrado TKN_MAS: %s",yytext);}
"-" {printf("Encontrado TKN_MENOS: %s",yytext);}
"(" {printf("Encontrado TKN_PAA: %s",yytext);}
")" {printf("Encontrado TKN_PAC: %s",yytext);}
"cos" {printf("Encontrado TKN_COS: %s",yytext);}
"sen" {printf("Encontrado TKN_SEN: %s",yytext);}
{ID} {printf("Encontrado TKN_ID: %s",yytext);}
"\n" {nlines++;}
