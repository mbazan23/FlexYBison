%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <ctype.h>
%}

%union
{
	float numeroDecimal;
}

/* Declaraciones BISON */

%token <numeroDecimal> NUM

%type <numeroDecimal> exp

%left '-' '+'
%left '*' '/'
%left NEG     /* negativo */
%right '^'    /* exponenciacion */

/* La gramatica */

%%
input:    /* vacio */
        | input line
;

line:     '\n'
        | exp '\n'  { printf ("\t %f\n", $1); }
;

exp:      NUM                { $$ = $1;         }
        | exp '+' exp        { $$ = $1 + $3;    }
        | exp '-' exp        { $$ = $1 - $3;    }
        | exp '*' exp        { $$ = $1 * $3;    }
        | exp '/' exp        { $$ = $1 / $3;    }
        | '-' exp  %prec NEG { $$ = -$2;        }
        | exp '^' exp        { $$ = pow ($1, $3); }
        | '(' exp ')'        { $$ = $2;         }
;
%%

main ()
{
	printf("\n Ingrese una operacion matematica a realizar (con valores en decimal, octal o hexadecimal). Se realiza y se muestra el resultado en decimal. \n");
 	yyparse ();
}


