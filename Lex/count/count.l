%{ 
    #include<stdio.h>
    int wc=0,lc=0,sc=0,ch=0;
%}

%%
[\n] {lc++; ch+=yyleng;}
[ \t] {sc++; ch+=yyleng;}
[^\t\n ]+ {wc++; ch+=yyleng;}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter a sentence :");
    yylex();
    printf("word count = %d\n",wc);
    printf("line count = %d\n",lc);
    printf("space count = %d\n",sc);
    printf("character count = %d\n",ch);

    return 0;
}