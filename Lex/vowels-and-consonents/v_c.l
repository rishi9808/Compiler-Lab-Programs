%{
    #include<stdio.h>
    int vowel_count=0;
    int consonent_count=0;
%}

%%
[aeiouAEIOU] {vowel_count++;}
[a-zA-Z] {consonent_count++;}
%%

int yywrap(){
    return 1;
}

int main(){
    printf("Enter a sentencs: ");
    yylex();
    printf("\n vowel count = %d",vowel_count);
    printf("\n consonent count = %d",consonent_count);

    return 0;

}