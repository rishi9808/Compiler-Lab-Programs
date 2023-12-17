%{
    #include<stdio.h>
%}

%token A B NL

%%
S: A T B NL{printf("valid"); 
            return 0; };
T: A T | ;
%%

int yyerror(){
    printf("invalid");
    return 0;
}

int main(){

    printf("enter a expression: ");
    yyparse();
    return 0;

}