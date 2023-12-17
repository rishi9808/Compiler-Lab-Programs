%{
    #include<stdio.h>
    int flag=0;
%}

%token num id 

%%
S:id'='E ';';
nid: num|id;
E:E'+'E|E'-'E|E'*'E|E'/'E|'('nid')'|nid;
%%

int yyerror(){
    flag=1;
    printf("Invalid expression");

    return 0;
}

int main(){
    printf("enter a expression: ");
    yyparse();
    if(flag==0){
        printf("valid expression");
    }

    return 0;
}