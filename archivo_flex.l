
DIGITO          [0-9]
NUM_ENTERO      {DIGITO}+
NUM_REAL        {NUM_ENTERO}("."{NUM_ENTERO})?
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

{NUM_ENTERO}      {printf("Encontrado NUM_ENTERO: %d",atoi(yytext));}
{NUM_REAL}        {printf("Encontrado NUM_REAL: %f",atof(yytext));}
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
