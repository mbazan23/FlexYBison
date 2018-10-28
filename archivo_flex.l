HEXADECIMAL     0[xX][0-9a-fA-F]+
OCTAL           0[1-7][0-7]*
DECIMAL_ENTERO  [1-9][0-9]*
DECIMAL_REAL    {DECIMAL_ENTERO}("."[0-9]+)?
ID              [a-z][a-zA-Z0-9]*
ASIGN           "="
PTOCOMA         ";"
MULT            "*"
DIV             "/"
MAS             "+"
MENOS           "-"
PAA             "("
PAC             ")"

%%
{HEXADECIMAL}     {printf("Encontrado HEXADECIMAL: %s",atoi(yytext));}
{OCTAL}           {printf("Encontrado OCTAL: %d",atoi(yytext));}
{DECIMAL_ENTERO}  {printf("Encontrado DECIMAL_ENTERO: %d",atoi(yytext));}
{DECIMAL_REAL}    {printf("Encontrado DECIMAL_REAL: %f",atof(yytext));}
{ID}              {printf("Encontrado ID: %s",yytext);}
"="               {printf("Encontrado ASIGN: %s",yytext);}
";"               {printf("Encontrado PTOCOMA: %s",yytext);}
"*"               {printf("Encontrado MULT: %s",yytext);}
"/"               {printf("Encontrado DIV: %s",yytext);}
"+"               {printf("Encontrado MAS: %s",yytext);}
"-"               {printf("Encontrado MENOS: %s",yytext);}
"("               {printf("Encontrado PAA: %s",yytext);}
")"               {printf("Encontrado PAC: %s",yytext);}

%%

int main(){ yylex();}
