%{
#include <math.h>
#include <stdio.h>
#include <ctype.h>
%}

%token NUM

%left ‘+’ ‘-’
%left ‘*’ ‘/’
%rigth '^'


%% /* reglas gramaticales y acciones */

input:  | input line ;        /* vacío */

line:     '\n'
        | exp '\n'  { printf ("\t %d\n", $1); }
;

exp:      NUM              {$$ = $1;}
        | exp '+' exp      {$$ = $1 + $3;}
        | exp '-' exp      {$$ = $1 - $3;}
        | exp '*' exp      {$$ = $1 * $3;}
        | exp '/' exp      {$$ = $1 / $3;}
        | exp '^' exp      {$$ = pow ($1, $3);}

;
%%

void yyerror(char* s)  /* la llama el yyparse frente un error */
{
  printf ("Se ha producido un error sintactico %s\n", s);
}

main ()
{
  yyparse ();
}


