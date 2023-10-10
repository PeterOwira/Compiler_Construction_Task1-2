
/* GROUP MEMBERS 
134703 Rita Maringa
135581 Peter Owira
137023 Booker Ongalo
134707 Joseph Mutua
132759 Leon Langat
136902 Cheruiyot Emmanuel

%{

%}

%option noyywrap

%%
"False"     { printf("%s is a reserved keyword.\n", yytext); }
"None"      { printf("%s is a reserved keyword.\n", yytext); }
"True"      { printf("%s is a reserved keyword.\n", yytext); }
"and"       { printf("%s is a reserved keyword.\n", yytext); }
"as"        { printf("%s is a reserved keyword.\n", yytext); }
"assert"    { printf("%s is a reserved keyword.\n", yytext); }
"async"     { printf("%s is a reserved keyword.\n", yytext); }
"await"     { printf("%s is a reserved keyword.\n", yytext); }
"break"     { printf("%s is a reserved keyword.\n", yytext); }
"class"     { printf("%s is a reserved keyword.\n", yytext); }
"continue"  { printf("%s is a reserved keyword.\n", yytext); }
"def"       { printf("%s is a reserved keyword.\n", yytext); }
"del"       { printf("%s is a reserved keyword.\n", yytext); }
"elif"      { printf("%s is a reserved keyword.\n", yytext); }
"else"      { printf("%s is a reserved keyword.\n", yytext); }
"except"    { printf("%s is a reserved keyword.\n", yytext); }
"finally"   { printf("%s is a reserved keyword.\n", yytext); }
"for"       { printf("%s is a reserved keyword.\n", yytext); }
"from"      { printf("%s is a reserved keyword.\n", yytext); }
"global"    { printf("%s is a reserved keyword.\n", yytext); }
"if"        { printf("%s is a reserved keyword.\n", yytext); }
"import"    { printf("%s is a reserved keyword.\n", yytext); }
"in"        { printf("%s is a reserved keyword.\n", yytext); }
"is"        { printf("%s is a reserved keyword.\n", yytext); }
"lambda"    { printf("%s is a reserved keyword.\n", yytext); }
"nonlocal"  { printf("%s is a reserved keyword.\n", yytext); }
"not"       { printf("%s is a reserved keyword.\n", yytext); }
"or"        { printf("%s is a reserved keyword.\n", yytext); }
"pass"      { printf("%s is a reserved keyword.\n", yytext); }
"raise"     { printf("%s is a reserved keyword.\n", yytext); }
"return"    { printf("%s is a reserved keyword.\n", yytext); }
"try"       { printf("%s is a reserved keyword.\n", yytext); }
"while"     { printf("%s is a reserved keyword.\n", yytext); }
"with"      { printf("%s is a reserved keyword.\n", yytext); }
"yield"     { printf("%s is a reserved keyword.\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* {
    printf("%s is a valid identifier.\n", yytext);
}
[0-9]+ { printf("%s is not a valid identifier.\n", yytext); }
.           { /* Ignore any other characters */ }
%%

int main(int argc, char** argv) {
    printf("Enter a identifier: ");
    yylex();
    return 0;
}
