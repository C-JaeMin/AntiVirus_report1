/* recognize tokens for the calculator and print them out */
%{
#include "report1.tab.h"
%}

%%

"+"     { return ADD; }
"-"     { return SUB; }
"*"     { return MUL; }
"/"     { return DIV; }
"|"     { return ABS; }
[0-9]+|[0-9]+"."[0-9]*[0-9]+?|"."?[0-9]+[0-9]+? { yylval.d = atof(yytext); return NUMBER; }
\n      { return EOL; }
[ \t]   { }
"("     { return OP; }
")"     { return CP; }
"//".*  { }
.       { printf("Mystery character %c\n", *yytext); }

%%
