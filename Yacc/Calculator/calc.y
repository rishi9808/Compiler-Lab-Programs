%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%token NUM
%left '+' '-'
%left '*' '/' '%'
%left '(' ')'

%%
S:E {printf("\nResult = %d\n",$$);
    return 0;
};

E:E'+'E {$$ = $1 + $3 ;}
| E'-'E {$$ = $1 - $3 ;}
| E'*'E {$$ = $1 * $3 ;}
| E'/'E {
        if($3!=0){
            $$=$1/$3;
        }else{
            yyerror();
        }
        }
| E'%'E {
        if($3!=0){
            $$=$1%$3;
        }else{
            yyerror();
        }
        }
| '('E')'{ $$=$2 ;}
| NUM {$$ = $1;}
;
%%

int yyerror(){
    printf("invalid!!");
    exit(0);
}

int main(){
    printf("CALCULATOR::: ");
    yyparse();
    return 0;
}