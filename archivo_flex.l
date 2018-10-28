%{
#include "calculadoraInfija.tab.h"
%}


%%

0[0-7]* {yylval.numeroDecimal = strtol (yytext + 1, NULL, 8); return NUM;} /* Captura un octal, devuelve un decimal */
[0-9]+(\.)?([0-9]+)?  {yylval.numeroDecimal = atof(yytext); return NUM;} /* Captura un decimal, lo devuelve */
0[xX][0-9 a-f A-F]+  {yylval.numeroDecimal = strtol (yytext + 2, NULL, 16); return NUM;} /* Captura un hexa, devuelve un decimal */
"+"     {return '+';}
"-"     {return '-';}
"*"     {return '*';}
"/"     {return '/';}
"^"     {return '^';} /* Los simbolos los devuelve literales para poder usarlos */
"("     {return '(';}
")"     {return ')';}
"\n"    {return '\n';}

%%
