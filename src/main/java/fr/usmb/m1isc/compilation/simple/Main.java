package fr.usmb.m1isc.compilation.simple;

import fr.usmb.m1isc.compilation.calculator.CalculatorLexer;
import fr.usmb.m1isc.compilation.calculator.CalculatorParser;

import java.io.FileReader;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws Exception {
        CalculatorLexer lexer;
        if (args.length > 0)
            lexer = new CalculatorLexer(new FileReader(args[0]));
        else
            lexer = new CalculatorLexer(new InputStreamReader(System.in));
            CalculatorParser p = new CalculatorParser(lexer);
            p.parse();
//        p.parse();
//
    }
}