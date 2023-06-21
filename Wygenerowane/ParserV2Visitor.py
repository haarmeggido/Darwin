# Generated from ParserV2.g4 by ANTLR 4.13.0
from antlr4 import *
if "." in __name__:
    from .ParserV2 import ParserV2
else:
    from ParserV2 import ParserV2

# This class defines a complete generic visitor for a parse tree produced by ParserV2.

class ParserV2Visitor(ParseTreeVisitor):

    # Visit a parse tree produced by ParserV2#symbolStartowy.
    def visitSymbolStartowy(self, ctx:ParserV2.SymbolStartowyContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#nowaLinia.
    def visitNowaLinia(self, ctx:ParserV2.NowaLiniaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#include.
    def visitInclude(self, ctx:ParserV2.IncludeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#using.
    def visitUsing(self, ctx:ParserV2.UsingContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#kod.
    def visitKod(self, ctx:ParserV2.KodContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#instrukcja.
    def visitInstrukcja(self, ctx:ParserV2.InstrukcjaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#if.
    def visitIf(self, ctx:ParserV2.IfContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#else.
    def visitElse(self, ctx:ParserV2.ElseContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#while.
    def visitWhile(self, ctx:ParserV2.WhileContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#for.
    def visitFor(self, ctx:ParserV2.ForContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#poInstrukcji.
    def visitPoInstrukcji(self, ctx:ParserV2.PoInstrukcjiContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#standardowePolecenie.
    def visitStandardowePolecenie(self, ctx:ParserV2.StandardowePolecenieContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#wyrazenie.
    def visitWyrazenie(self, ctx:ParserV2.WyrazenieContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#operand.
    def visitOperand(self, ctx:ParserV2.OperandContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#zmienna.
    def visitZmienna(self, ctx:ParserV2.ZmiennaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#typZmiennej.
    def visitTypZmiennej(self, ctx:ParserV2.TypZmiennejContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#cout.
    def visitCout(self, ctx:ParserV2.CoutContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#cin.
    def visitCin(self, ctx:ParserV2.CinContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#wartosc.
    def visitWartosc(self, ctx:ParserV2.WartoscContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#wartoscLiczbowa.
    def visitWartoscLiczbowa(self, ctx:ParserV2.WartoscLiczbowaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#wartoscZnakowa.
    def visitWartoscZnakowa(self, ctx:ParserV2.WartoscZnakowaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#wartoscLogiczna.
    def visitWartoscLogiczna(self, ctx:ParserV2.WartoscLogicznaContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#operator.
    def visitOperator(self, ctx:ParserV2.OperatorContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#operatorArytmetyczny.
    def visitOperatorArytmetyczny(self, ctx:ParserV2.OperatorArytmetycznyContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#operatorRelacyjny.
    def visitOperatorRelacyjny(self, ctx:ParserV2.OperatorRelacyjnyContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by ParserV2#operatorLogiczny.
    def visitOperatorLogiczny(self, ctx:ParserV2.OperatorLogicznyContext):
        return self.visitChildren(ctx)



del ParserV2