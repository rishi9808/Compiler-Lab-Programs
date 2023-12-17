%{
    #include"y.tab.h"    
%}

%%
[0-9]+ {return num;}
[a-z][a-zA-Z0-9]* {return id;}
[ \t\n] {;}
. {return yytext[0];}
%%

int yywrap(){
    return 1;
}