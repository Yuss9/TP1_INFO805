/* --------------------------Section de Code Utilisateur---------------------*/
package fr.usmb.m1isc.compilation.calculator;
import java_cup.runtime.Symbol;

%%

%public
%class CalculatorLexer
%cupsym CalculatorParserSym
%cup

%{
// Définition des variables pour les symboles CUP
// Par convention, les symboles CUP sont en majuscule
%}


// Définition des expressions régulières
digit = [0-9]
number = {digit}+

%%

    // ignorer les espaces, tabulations et sauts de ligne
    [ \t\n\r]  { }

    // opérateurs binaires
    "+"        { return sym("PLUS"); }
    "-"        { return sym("MINUS"); }
    "*"        { return sym("TIMES"); }
    "/"        { return sym("DIVIDE"); }
    "mod"      { return sym("MODULO"); }

    // opérateurs unaires
    "not"      { return sym("NOT"); }

    // autres symboles
    "("        { return sym("LPAREN"); }
    ")"        { return sym("RPAREN"); }
    ";"        { return sym("SEMICOLON"); }

    // nombres
    {number}   { return sym("NUMBER", Integer.parseInt(yytext())); }

    // erreurs
    .          { return sym("ERROR"); }
