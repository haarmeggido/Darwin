# Generated from ParserV2.g4 by ANTLR 4.13.0
# encoding: utf-8
from antlr4 import *
from io import StringIO
import sys
if sys.version_info[1] > 5:
	from typing import TextIO
else:
	from typing.io import TextIO

def serializedATN():
    return [
        4,1,57,277,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
        6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
        2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,
        7,20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,1,0,1,0,5,
        0,55,8,0,10,0,12,0,58,9,0,1,0,1,0,1,0,1,0,1,0,1,0,1,1,1,1,1,2,1,
        2,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,4,1,4,1,4,4,4,82,8,4,11,
        4,12,4,83,1,4,4,4,87,8,4,11,4,12,4,88,1,4,1,4,5,4,93,8,4,10,4,12,
        4,96,9,4,1,5,1,5,1,5,3,5,101,8,5,1,6,1,6,1,6,1,6,1,6,1,6,4,6,109,
        8,6,11,6,12,6,110,1,6,4,6,114,8,6,11,6,12,6,115,1,6,4,6,119,8,6,
        11,6,12,6,120,1,7,1,7,1,7,1,7,3,7,127,8,7,1,8,1,8,1,8,1,8,1,8,1,
        8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,10,1,10,1,10,1,10,1,
        10,1,10,1,10,1,10,1,10,1,10,3,10,155,8,10,1,11,1,11,1,11,1,11,1,
        11,4,11,162,8,11,11,11,12,11,163,1,11,1,11,1,11,1,11,1,11,3,11,171,
        8,11,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,5,12,182,8,12,
        10,12,12,12,185,9,12,1,12,1,12,1,12,1,12,1,12,1,12,3,12,193,8,12,
        1,13,1,13,3,13,197,8,13,1,14,1,14,1,15,1,15,1,16,1,16,1,16,1,16,
        5,16,207,8,16,10,16,12,16,210,9,16,1,16,1,16,1,16,1,16,1,16,1,16,
        1,17,1,17,1,17,1,17,5,17,222,8,17,10,17,12,17,225,9,17,1,17,1,17,
        1,17,4,17,230,8,17,11,17,12,17,231,1,17,1,17,1,17,1,18,1,18,1,18,
        3,18,240,8,18,1,19,1,19,1,19,1,19,1,19,1,19,5,19,248,8,19,10,19,
        12,19,251,9,19,1,19,3,19,254,8,19,3,19,256,8,19,1,20,1,20,1,20,1,
        20,3,20,262,8,20,1,21,1,21,1,22,1,22,1,22,3,22,269,8,22,1,23,1,23,
        1,24,1,24,1,25,1,25,1,25,0,0,26,0,2,4,6,8,10,12,14,16,18,20,22,24,
        26,28,30,32,34,36,38,40,42,44,46,48,50,0,8,1,0,33,37,1,0,8,9,2,0,
        49,49,51,51,1,0,18,22,1,0,23,24,1,0,1,5,1,0,25,30,1,0,38,40,288,
        0,56,1,0,0,0,2,65,1,0,0,0,4,67,1,0,0,0,6,73,1,0,0,0,8,94,1,0,0,0,
        10,100,1,0,0,0,12,102,1,0,0,0,14,126,1,0,0,0,16,128,1,0,0,0,18,134,
        1,0,0,0,20,154,1,0,0,0,22,170,1,0,0,0,24,192,1,0,0,0,26,196,1,0,
        0,0,28,198,1,0,0,0,30,200,1,0,0,0,32,202,1,0,0,0,34,217,1,0,0,0,
        36,239,1,0,0,0,38,255,1,0,0,0,40,261,1,0,0,0,42,263,1,0,0,0,44,268,
        1,0,0,0,46,270,1,0,0,0,48,272,1,0,0,0,50,274,1,0,0,0,52,55,3,4,2,
        0,53,55,3,6,3,0,54,52,1,0,0,0,54,53,1,0,0,0,55,58,1,0,0,0,56,54,
        1,0,0,0,56,57,1,0,0,0,57,59,1,0,0,0,58,56,1,0,0,0,59,60,5,32,0,0,
        60,61,5,16,0,0,61,62,3,2,1,0,62,63,3,8,4,0,63,64,5,17,0,0,64,1,1,
        0,0,0,65,66,5,44,0,0,66,3,1,0,0,0,67,68,5,31,0,0,68,69,5,26,0,0,
        69,70,3,28,14,0,70,71,5,27,0,0,71,72,3,2,1,0,72,5,1,0,0,0,73,74,
        5,48,0,0,74,75,3,28,14,0,75,76,5,41,0,0,76,77,3,2,1,0,77,7,1,0,0,
        0,78,93,3,10,5,0,79,81,3,22,11,0,80,82,5,41,0,0,81,80,1,0,0,0,82,
        83,1,0,0,0,83,81,1,0,0,0,83,84,1,0,0,0,84,86,1,0,0,0,85,87,3,2,1,
        0,86,85,1,0,0,0,87,88,1,0,0,0,88,86,1,0,0,0,88,89,1,0,0,0,89,93,
        1,0,0,0,90,93,3,34,17,0,91,93,3,32,16,0,92,78,1,0,0,0,92,79,1,0,
        0,0,92,90,1,0,0,0,92,91,1,0,0,0,93,96,1,0,0,0,94,92,1,0,0,0,94,95,
        1,0,0,0,95,9,1,0,0,0,96,94,1,0,0,0,97,101,3,12,6,0,98,101,3,16,8,
        0,99,101,3,18,9,0,100,97,1,0,0,0,100,98,1,0,0,0,100,99,1,0,0,0,101,
        11,1,0,0,0,102,103,5,12,0,0,103,104,5,14,0,0,104,105,3,24,12,0,105,
        106,5,15,0,0,106,108,3,20,10,0,107,109,5,41,0,0,108,107,1,0,0,0,
        109,110,1,0,0,0,110,108,1,0,0,0,110,111,1,0,0,0,111,113,1,0,0,0,
        112,114,5,44,0,0,113,112,1,0,0,0,114,115,1,0,0,0,115,113,1,0,0,0,
        115,116,1,0,0,0,116,118,1,0,0,0,117,119,3,14,7,0,118,117,1,0,0,0,
        119,120,1,0,0,0,120,118,1,0,0,0,120,121,1,0,0,0,121,13,1,0,0,0,122,
        123,5,13,0,0,123,124,5,43,0,0,124,127,3,12,6,0,125,127,3,20,10,0,
        126,122,1,0,0,0,126,125,1,0,0,0,127,15,1,0,0,0,128,129,5,11,0,0,
        129,130,5,14,0,0,130,131,3,24,12,0,131,132,5,15,0,0,132,133,3,20,
        10,0,133,17,1,0,0,0,134,135,5,10,0,0,135,136,5,14,0,0,136,137,3,
        22,11,0,137,138,5,42,0,0,138,139,3,24,12,0,139,140,5,42,0,0,140,
        141,3,22,11,0,141,142,5,15,0,0,142,143,3,20,10,0,143,19,1,0,0,0,
        144,155,3,34,17,0,145,155,3,32,16,0,146,155,3,10,5,0,147,155,3,22,
        11,0,148,149,5,16,0,0,149,150,3,2,1,0,150,151,3,8,4,0,151,152,5,
        17,0,0,152,153,3,2,1,0,153,155,1,0,0,0,154,144,1,0,0,0,154,145,1,
        0,0,0,154,146,1,0,0,0,154,147,1,0,0,0,154,148,1,0,0,0,155,21,1,0,
        0,0,156,157,3,30,15,0,157,158,5,43,0,0,158,161,3,28,14,0,159,160,
        7,0,0,0,160,162,3,24,12,0,161,159,1,0,0,0,162,163,1,0,0,0,163,161,
        1,0,0,0,163,164,1,0,0,0,164,171,1,0,0,0,165,166,3,28,14,0,166,167,
        7,0,0,0,167,168,3,24,12,0,168,171,1,0,0,0,169,171,3,24,12,0,170,
        156,1,0,0,0,170,165,1,0,0,0,170,169,1,0,0,0,171,23,1,0,0,0,172,173,
        3,28,14,0,173,174,7,1,0,0,174,193,1,0,0,0,175,176,7,1,0,0,176,193,
        3,28,14,0,177,183,3,26,13,0,178,179,3,44,22,0,179,180,3,26,13,0,
        180,182,1,0,0,0,181,178,1,0,0,0,182,185,1,0,0,0,183,181,1,0,0,0,
        183,184,1,0,0,0,184,193,1,0,0,0,185,183,1,0,0,0,186,187,3,28,14,
        0,187,188,5,7,0,0,188,189,3,26,13,0,189,190,5,6,0,0,190,191,3,26,
        13,0,191,193,1,0,0,0,192,172,1,0,0,0,192,175,1,0,0,0,192,177,1,0,
        0,0,192,186,1,0,0,0,193,25,1,0,0,0,194,197,3,28,14,0,195,197,3,36,
        18,0,196,194,1,0,0,0,196,195,1,0,0,0,197,27,1,0,0,0,198,199,7,2,
        0,0,199,29,1,0,0,0,200,201,7,3,0,0,201,31,1,0,0,0,202,208,5,45,0,
        0,203,204,5,26,0,0,204,205,5,26,0,0,205,207,3,24,12,0,206,203,1,
        0,0,0,207,210,1,0,0,0,208,206,1,0,0,0,208,209,1,0,0,0,209,211,1,
        0,0,0,210,208,1,0,0,0,211,212,5,26,0,0,212,213,5,26,0,0,213,214,
        5,47,0,0,214,215,5,41,0,0,215,216,3,2,1,0,216,33,1,0,0,0,217,223,
        5,46,0,0,218,219,5,27,0,0,219,220,5,27,0,0,220,222,3,24,12,0,221,
        218,1,0,0,0,222,225,1,0,0,0,223,221,1,0,0,0,223,224,1,0,0,0,224,
        229,1,0,0,0,225,223,1,0,0,0,226,227,5,27,0,0,227,228,5,27,0,0,228,
        230,5,47,0,0,229,226,1,0,0,0,230,231,1,0,0,0,231,229,1,0,0,0,231,
        232,1,0,0,0,232,233,1,0,0,0,233,234,5,41,0,0,234,235,3,2,1,0,235,
        35,1,0,0,0,236,240,3,38,19,0,237,240,3,40,20,0,238,240,3,42,21,0,
        239,236,1,0,0,0,239,237,1,0,0,0,239,238,1,0,0,0,240,37,1,0,0,0,241,
        256,5,53,0,0,242,256,5,54,0,0,243,254,5,53,0,0,244,245,5,54,0,0,
        245,249,5,55,0,0,246,248,5,53,0,0,247,246,1,0,0,0,248,251,1,0,0,
        0,249,247,1,0,0,0,249,250,1,0,0,0,250,252,1,0,0,0,251,249,1,0,0,
        0,252,254,5,54,0,0,253,243,1,0,0,0,253,244,1,0,0,0,254,256,1,0,0,
        0,255,241,1,0,0,0,255,242,1,0,0,0,255,253,1,0,0,0,256,39,1,0,0,0,
        257,262,5,52,0,0,258,259,5,56,0,0,259,260,5,49,0,0,260,262,5,56,
        0,0,261,257,1,0,0,0,261,258,1,0,0,0,262,41,1,0,0,0,263,264,7,4,0,
        0,264,43,1,0,0,0,265,269,3,50,25,0,266,269,3,46,23,0,267,269,3,48,
        24,0,268,265,1,0,0,0,268,266,1,0,0,0,268,267,1,0,0,0,269,45,1,0,
        0,0,270,271,7,5,0,0,271,47,1,0,0,0,272,273,7,6,0,0,273,49,1,0,0,
        0,274,275,7,7,0,0,275,51,1,0,0,0,26,54,56,83,88,92,94,100,110,115,
        120,126,154,163,170,183,192,196,208,223,231,239,249,253,255,261,
        268
    ]

class ParserV2 ( Parser ):

    grammarFileName = "ParserV2.g4"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ "<INVALID>", "'+'", "'-'", "'*'", "'/'", "'%'", "':'", 
                     "'?'", "'++'", "'--'", "'dla'", "'dopoki'", "'jesli'", 
                     "'inaczej'", "'('", "')'", "'{'", "'}'", "'znak'", 
                     "'calkowity'", "'zmiennoprzecinkowy'", "'logiczny'", 
                     "'wieloznakowy'", "'prawda'", "'herezja'", "'=='", 
                     "'<'", "'>'", "'<='", "'>='", "'!='", "'#zawiera'", 
                     "'calkowity glowna()'", "'='", "'+='", "'-='", "'*='", 
                     "'/='", "'||'", "'&&'", "'!'", "';'", "','", "' '", 
                     "<INVALID>", "'cout'", "'cin'", "'koniecl'", "'uzywa przestrzeni nazw '", 
                     "<INVALID>", "<INVALID>", "<INVALID>", "<INVALID>", 
                     "'0'", "<INVALID>", "'.'" ]

    symbolicNames = [ "<INVALID>", "Dodawanie", "Odejmowanie", "Mnozenie", 
                      "Dzielenie", "Modulo", "Dwukropek", "ZnakZapytania", 
                      "Inkrementacja", "Dekrementacja", "For", "While", 
                      "If", "Else", "LewyNawias", "PrawyNawias", "LewaKlamra", 
                      "PrawaKlamra", "TypZnakowy", "TypCalkowity", "TypZmiennoprzecinkowy", 
                      "TypLogiczny", "TypWieloznakowy", "Prawda", "Herezja", 
                      "Porownanie", "ZnakMniejszosci", "ZnakWiekszosci", 
                      "ZnakMniejszosciLubRownosci", "ZnakWiekszosciLubRownosci", 
                      "ZnakNierownosci", "Include", "FunkcjaGlowna", "Przypisanie", 
                      "Zwiekszenie", "Zmniejszenie", "Wymnozenie", "Wydzielenie", 
                      "Lub", "I", "Nie", "Srednik", "Przecinek", "Spacja", 
                      "NowaLinia", "Cout", "Cin", "Endl", "UsingNamespace", 
                      "ZMIENNA_CHAR", "CHAR_LITEROWY", "NAZWA", "STRING", 
                      "Zero", "LICZBA", "KROPKA", "Apostrof", "Cudzyslow" ]

    RULE_symbolStartowy = 0
    RULE_nowaLinia = 1
    RULE_include = 2
    RULE_using = 3
    RULE_kod = 4
    RULE_instrukcja = 5
    RULE_if = 6
    RULE_else = 7
    RULE_while = 8
    RULE_for = 9
    RULE_poInstrukcji = 10
    RULE_standardowePolecenie = 11
    RULE_wyrazenie = 12
    RULE_operand = 13
    RULE_zmienna = 14
    RULE_typZmiennej = 15
    RULE_cout = 16
    RULE_cin = 17
    RULE_wartosc = 18
    RULE_wartoscLiczbowa = 19
    RULE_wartoscZnakowa = 20
    RULE_wartoscLogiczna = 21
    RULE_operator = 22
    RULE_operatorArytmetyczny = 23
    RULE_operatorRelacyjny = 24
    RULE_operatorLogiczny = 25

    ruleNames =  [ "symbolStartowy", "nowaLinia", "include", "using", "kod", 
                   "instrukcja", "if", "else", "while", "for", "poInstrukcji", 
                   "standardowePolecenie", "wyrazenie", "operand", "zmienna", 
                   "typZmiennej", "cout", "cin", "wartosc", "wartoscLiczbowa", 
                   "wartoscZnakowa", "wartoscLogiczna", "operator", "operatorArytmetyczny", 
                   "operatorRelacyjny", "operatorLogiczny" ]

    EOF = Token.EOF
    Dodawanie=1
    Odejmowanie=2
    Mnozenie=3
    Dzielenie=4
    Modulo=5
    Dwukropek=6
    ZnakZapytania=7
    Inkrementacja=8
    Dekrementacja=9
    For=10
    While=11
    If=12
    Else=13
    LewyNawias=14
    PrawyNawias=15
    LewaKlamra=16
    PrawaKlamra=17
    TypZnakowy=18
    TypCalkowity=19
    TypZmiennoprzecinkowy=20
    TypLogiczny=21
    TypWieloznakowy=22
    Prawda=23
    Herezja=24
    Porownanie=25
    ZnakMniejszosci=26
    ZnakWiekszosci=27
    ZnakMniejszosciLubRownosci=28
    ZnakWiekszosciLubRownosci=29
    ZnakNierownosci=30
    Include=31
    FunkcjaGlowna=32
    Przypisanie=33
    Zwiekszenie=34
    Zmniejszenie=35
    Wymnozenie=36
    Wydzielenie=37
    Lub=38
    I=39
    Nie=40
    Srednik=41
    Przecinek=42
    Spacja=43
    NowaLinia=44
    Cout=45
    Cin=46
    Endl=47
    UsingNamespace=48
    ZMIENNA_CHAR=49
    CHAR_LITEROWY=50
    NAZWA=51
    STRING=52
    Zero=53
    LICZBA=54
    KROPKA=55
    Apostrof=56
    Cudzyslow=57

    def __init__(self, input:TokenStream, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.13.0")
        self._interp = ParserATNSimulator(self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None




    class SymbolStartowyContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def FunkcjaGlowna(self):
            return self.getToken(ParserV2.FunkcjaGlowna, 0)

        def LewaKlamra(self):
            return self.getToken(ParserV2.LewaKlamra, 0)

        def nowaLinia(self):
            return self.getTypedRuleContext(ParserV2.NowaLiniaContext,0)


        def kod(self):
            return self.getTypedRuleContext(ParserV2.KodContext,0)


        def PrawaKlamra(self):
            return self.getToken(ParserV2.PrawaKlamra, 0)

        def include(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.IncludeContext)
            else:
                return self.getTypedRuleContext(ParserV2.IncludeContext,i)


        def using(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.UsingContext)
            else:
                return self.getTypedRuleContext(ParserV2.UsingContext,i)


        def getRuleIndex(self):
            return ParserV2.RULE_symbolStartowy

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterSymbolStartowy" ):
                listener.enterSymbolStartowy(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitSymbolStartowy" ):
                listener.exitSymbolStartowy(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitSymbolStartowy" ):
                return visitor.visitSymbolStartowy(self)
            else:
                return visitor.visitChildren(self)




    def symbolStartowy(self):

        localctx = ParserV2.SymbolStartowyContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_symbolStartowy)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 56
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==31 or _la==48:
                self.state = 54
                self._errHandler.sync(self)
                token = self._input.LA(1)
                if token in [31]:
                    self.state = 52
                    self.include()
                    pass
                elif token in [48]:
                    self.state = 53
                    self.using()
                    pass
                else:
                    raise NoViableAltException(self)

                self.state = 58
                self._errHandler.sync(self)
                _la = self._input.LA(1)

            self.state = 59
            self.match(ParserV2.FunkcjaGlowna)
            self.state = 60
            self.match(ParserV2.LewaKlamra)
            self.state = 61
            self.nowaLinia()
            self.state = 62
            self.kod()
            self.state = 63
            self.match(ParserV2.PrawaKlamra)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class NowaLiniaContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def NowaLinia(self):
            return self.getToken(ParserV2.NowaLinia, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_nowaLinia

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterNowaLinia" ):
                listener.enterNowaLinia(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitNowaLinia" ):
                listener.exitNowaLinia(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitNowaLinia" ):
                return visitor.visitNowaLinia(self)
            else:
                return visitor.visitChildren(self)




    def nowaLinia(self):

        localctx = ParserV2.NowaLiniaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_nowaLinia)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 65
            self.match(ParserV2.NowaLinia)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class IncludeContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Include(self):
            return self.getToken(ParserV2.Include, 0)

        def ZnakMniejszosci(self):
            return self.getToken(ParserV2.ZnakMniejszosci, 0)

        def zmienna(self):
            return self.getTypedRuleContext(ParserV2.ZmiennaContext,0)


        def ZnakWiekszosci(self):
            return self.getToken(ParserV2.ZnakWiekszosci, 0)

        def nowaLinia(self):
            return self.getTypedRuleContext(ParserV2.NowaLiniaContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_include

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterInclude" ):
                listener.enterInclude(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitInclude" ):
                listener.exitInclude(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitInclude" ):
                return visitor.visitInclude(self)
            else:
                return visitor.visitChildren(self)




    def include(self):

        localctx = ParserV2.IncludeContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_include)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 67
            self.match(ParserV2.Include)
            self.state = 68
            self.match(ParserV2.ZnakMniejszosci)
            self.state = 69
            self.zmienna()
            self.state = 70
            self.match(ParserV2.ZnakWiekszosci)
            self.state = 71
            self.nowaLinia()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class UsingContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def UsingNamespace(self):
            return self.getToken(ParserV2.UsingNamespace, 0)

        def zmienna(self):
            return self.getTypedRuleContext(ParserV2.ZmiennaContext,0)


        def Srednik(self):
            return self.getToken(ParserV2.Srednik, 0)

        def nowaLinia(self):
            return self.getTypedRuleContext(ParserV2.NowaLiniaContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_using

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterUsing" ):
                listener.enterUsing(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitUsing" ):
                listener.exitUsing(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitUsing" ):
                return visitor.visitUsing(self)
            else:
                return visitor.visitChildren(self)




    def using(self):

        localctx = ParserV2.UsingContext(self, self._ctx, self.state)
        self.enterRule(localctx, 6, self.RULE_using)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 73
            self.match(ParserV2.UsingNamespace)
            self.state = 74
            self.zmienna()
            self.state = 75
            self.match(ParserV2.Srednik)
            self.state = 76
            self.nowaLinia()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class KodContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def instrukcja(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.InstrukcjaContext)
            else:
                return self.getTypedRuleContext(ParserV2.InstrukcjaContext,i)


        def cin(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.CinContext)
            else:
                return self.getTypedRuleContext(ParserV2.CinContext,i)


        def cout(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.CoutContext)
            else:
                return self.getTypedRuleContext(ParserV2.CoutContext,i)


        def standardowePolecenie(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.StandardowePolecenieContext)
            else:
                return self.getTypedRuleContext(ParserV2.StandardowePolecenieContext,i)


        def Srednik(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Srednik)
            else:
                return self.getToken(ParserV2.Srednik, i)

        def nowaLinia(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.NowaLiniaContext)
            else:
                return self.getTypedRuleContext(ParserV2.NowaLiniaContext,i)


        def getRuleIndex(self):
            return ParserV2.RULE_kod

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterKod" ):
                listener.enterKod(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitKod" ):
                listener.exitKod(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitKod" ):
                return visitor.visitKod(self)
            else:
                return visitor.visitChildren(self)




    def kod(self):

        localctx = ParserV2.KodContext(self, self._ctx, self.state)
        self.enterRule(localctx, 8, self.RULE_kod)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 94
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while (((_la) & ~0x3f) == 0 and ((1 << _la) & 106503094346194688) != 0):
                self.state = 92
                self._errHandler.sync(self)
                token = self._input.LA(1)
                if token in [10, 11, 12]:
                    self.state = 78
                    self.instrukcja()
                    pass
                elif token in [8, 9, 18, 19, 20, 21, 22, 23, 24, 49, 51, 52, 53, 54, 56]:
                    self.state = 79
                    self.standardowePolecenie()
                    self.state = 81 
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    while True:
                        self.state = 80
                        self.match(ParserV2.Srednik)
                        self.state = 83 
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)
                        if not (_la==41):
                            break

                    self.state = 86 
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    while True:
                        self.state = 85
                        self.nowaLinia()
                        self.state = 88 
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)
                        if not (_la==44):
                            break

                    pass
                elif token in [46]:
                    self.state = 90
                    self.cin()
                    pass
                elif token in [45]:
                    self.state = 91
                    self.cout()
                    pass
                else:
                    raise NoViableAltException(self)

                self.state = 96
                self._errHandler.sync(self)
                _la = self._input.LA(1)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class InstrukcjaContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def if_(self):
            return self.getTypedRuleContext(ParserV2.IfContext,0)


        def while_(self):
            return self.getTypedRuleContext(ParserV2.WhileContext,0)


        def for_(self):
            return self.getTypedRuleContext(ParserV2.ForContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_instrukcja

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterInstrukcja" ):
                listener.enterInstrukcja(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitInstrukcja" ):
                listener.exitInstrukcja(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitInstrukcja" ):
                return visitor.visitInstrukcja(self)
            else:
                return visitor.visitChildren(self)




    def instrukcja(self):

        localctx = ParserV2.InstrukcjaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 10, self.RULE_instrukcja)
        try:
            self.state = 100
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [12]:
                self.enterOuterAlt(localctx, 1)
                self.state = 97
                self.if_()
                pass
            elif token in [11]:
                self.enterOuterAlt(localctx, 2)
                self.state = 98
                self.while_()
                pass
            elif token in [10]:
                self.enterOuterAlt(localctx, 3)
                self.state = 99
                self.for_()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class IfContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def If(self):
            return self.getToken(ParserV2.If, 0)

        def LewyNawias(self):
            return self.getToken(ParserV2.LewyNawias, 0)

        def wyrazenie(self):
            return self.getTypedRuleContext(ParserV2.WyrazenieContext,0)


        def PrawyNawias(self):
            return self.getToken(ParserV2.PrawyNawias, 0)

        def poInstrukcji(self):
            return self.getTypedRuleContext(ParserV2.PoInstrukcjiContext,0)


        def Srednik(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Srednik)
            else:
                return self.getToken(ParserV2.Srednik, i)

        def NowaLinia(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.NowaLinia)
            else:
                return self.getToken(ParserV2.NowaLinia, i)

        def else_(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.ElseContext)
            else:
                return self.getTypedRuleContext(ParserV2.ElseContext,i)


        def getRuleIndex(self):
            return ParserV2.RULE_if

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterIf" ):
                listener.enterIf(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitIf" ):
                listener.exitIf(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitIf" ):
                return visitor.visitIf(self)
            else:
                return visitor.visitChildren(self)




    def if_(self):

        localctx = ParserV2.IfContext(self, self._ctx, self.state)
        self.enterRule(localctx, 12, self.RULE_if)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 102
            self.match(ParserV2.If)
            self.state = 103
            self.match(ParserV2.LewyNawias)
            self.state = 104
            self.wyrazenie()
            self.state = 105
            self.match(ParserV2.PrawyNawias)
            self.state = 106
            self.poInstrukcji()
            self.state = 108 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 107
                self.match(ParserV2.Srednik)
                self.state = 110 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==41):
                    break

            self.state = 113 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 112
                self.match(ParserV2.NowaLinia)
                self.state = 115 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==44):
                    break

            self.state = 118 
            self._errHandler.sync(self)
            _alt = 1
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt == 1:
                    self.state = 117
                    self.else_()

                else:
                    raise NoViableAltException(self)
                self.state = 120 
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,9,self._ctx)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ElseContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Else(self):
            return self.getToken(ParserV2.Else, 0)

        def Spacja(self):
            return self.getToken(ParserV2.Spacja, 0)

        def if_(self):
            return self.getTypedRuleContext(ParserV2.IfContext,0)


        def poInstrukcji(self):
            return self.getTypedRuleContext(ParserV2.PoInstrukcjiContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_else

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterElse" ):
                listener.enterElse(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitElse" ):
                listener.exitElse(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitElse" ):
                return visitor.visitElse(self)
            else:
                return visitor.visitChildren(self)




    def else_(self):

        localctx = ParserV2.ElseContext(self, self._ctx, self.state)
        self.enterRule(localctx, 14, self.RULE_else)
        try:
            self.state = 126
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [13]:
                self.enterOuterAlt(localctx, 1)
                self.state = 122
                self.match(ParserV2.Else)

                self.state = 123
                self.match(ParserV2.Spacja)
                self.state = 124
                self.if_()
                pass
            elif token in [8, 9, 10, 11, 12, 16, 18, 19, 20, 21, 22, 23, 24, 45, 46, 49, 51, 52, 53, 54, 56]:
                self.enterOuterAlt(localctx, 2)
                self.state = 125
                self.poInstrukcji()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class WhileContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def While(self):
            return self.getToken(ParserV2.While, 0)

        def LewyNawias(self):
            return self.getToken(ParserV2.LewyNawias, 0)

        def wyrazenie(self):
            return self.getTypedRuleContext(ParserV2.WyrazenieContext,0)


        def PrawyNawias(self):
            return self.getToken(ParserV2.PrawyNawias, 0)

        def poInstrukcji(self):
            return self.getTypedRuleContext(ParserV2.PoInstrukcjiContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_while

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterWhile" ):
                listener.enterWhile(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitWhile" ):
                listener.exitWhile(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitWhile" ):
                return visitor.visitWhile(self)
            else:
                return visitor.visitChildren(self)




    def while_(self):

        localctx = ParserV2.WhileContext(self, self._ctx, self.state)
        self.enterRule(localctx, 16, self.RULE_while)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 128
            self.match(ParserV2.While)
            self.state = 129
            self.match(ParserV2.LewyNawias)
            self.state = 130
            self.wyrazenie()
            self.state = 131
            self.match(ParserV2.PrawyNawias)
            self.state = 132
            self.poInstrukcji()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ForContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def For(self):
            return self.getToken(ParserV2.For, 0)

        def LewyNawias(self):
            return self.getToken(ParserV2.LewyNawias, 0)

        def standardowePolecenie(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.StandardowePolecenieContext)
            else:
                return self.getTypedRuleContext(ParserV2.StandardowePolecenieContext,i)


        def Przecinek(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Przecinek)
            else:
                return self.getToken(ParserV2.Przecinek, i)

        def wyrazenie(self):
            return self.getTypedRuleContext(ParserV2.WyrazenieContext,0)


        def PrawyNawias(self):
            return self.getToken(ParserV2.PrawyNawias, 0)

        def poInstrukcji(self):
            return self.getTypedRuleContext(ParserV2.PoInstrukcjiContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_for

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterFor" ):
                listener.enterFor(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitFor" ):
                listener.exitFor(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitFor" ):
                return visitor.visitFor(self)
            else:
                return visitor.visitChildren(self)




    def for_(self):

        localctx = ParserV2.ForContext(self, self._ctx, self.state)
        self.enterRule(localctx, 18, self.RULE_for)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 134
            self.match(ParserV2.For)
            self.state = 135
            self.match(ParserV2.LewyNawias)
            self.state = 136
            self.standardowePolecenie()
            self.state = 137
            self.match(ParserV2.Przecinek)
            self.state = 138
            self.wyrazenie()
            self.state = 139
            self.match(ParserV2.Przecinek)
            self.state = 140
            self.standardowePolecenie()
            self.state = 141
            self.match(ParserV2.PrawyNawias)
            self.state = 142
            self.poInstrukcji()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class PoInstrukcjiContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def cin(self):
            return self.getTypedRuleContext(ParserV2.CinContext,0)


        def cout(self):
            return self.getTypedRuleContext(ParserV2.CoutContext,0)


        def instrukcja(self):
            return self.getTypedRuleContext(ParserV2.InstrukcjaContext,0)


        def standardowePolecenie(self):
            return self.getTypedRuleContext(ParserV2.StandardowePolecenieContext,0)


        def LewaKlamra(self):
            return self.getToken(ParserV2.LewaKlamra, 0)

        def nowaLinia(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.NowaLiniaContext)
            else:
                return self.getTypedRuleContext(ParserV2.NowaLiniaContext,i)


        def kod(self):
            return self.getTypedRuleContext(ParserV2.KodContext,0)


        def PrawaKlamra(self):
            return self.getToken(ParserV2.PrawaKlamra, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_poInstrukcji

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterPoInstrukcji" ):
                listener.enterPoInstrukcji(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitPoInstrukcji" ):
                listener.exitPoInstrukcji(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitPoInstrukcji" ):
                return visitor.visitPoInstrukcji(self)
            else:
                return visitor.visitChildren(self)




    def poInstrukcji(self):

        localctx = ParserV2.PoInstrukcjiContext(self, self._ctx, self.state)
        self.enterRule(localctx, 20, self.RULE_poInstrukcji)
        try:
            self.state = 154
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [46]:
                self.enterOuterAlt(localctx, 1)
                self.state = 144
                self.cin()
                pass
            elif token in [45]:
                self.enterOuterAlt(localctx, 2)
                self.state = 145
                self.cout()
                pass
            elif token in [10, 11, 12]:
                self.enterOuterAlt(localctx, 3)
                self.state = 146
                self.instrukcja()
                pass
            elif token in [8, 9, 18, 19, 20, 21, 22, 23, 24, 49, 51, 52, 53, 54, 56]:
                self.enterOuterAlt(localctx, 4)
                self.state = 147
                self.standardowePolecenie()
                pass
            elif token in [16]:
                self.enterOuterAlt(localctx, 5)
                self.state = 148
                self.match(ParserV2.LewaKlamra)
                self.state = 149
                self.nowaLinia()
                self.state = 150
                self.kod()
                self.state = 151
                self.match(ParserV2.PrawaKlamra)
                self.state = 152
                self.nowaLinia()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class StandardowePolecenieContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def typZmiennej(self):
            return self.getTypedRuleContext(ParserV2.TypZmiennejContext,0)


        def Spacja(self):
            return self.getToken(ParserV2.Spacja, 0)

        def zmienna(self):
            return self.getTypedRuleContext(ParserV2.ZmiennaContext,0)


        def wyrazenie(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.WyrazenieContext)
            else:
                return self.getTypedRuleContext(ParserV2.WyrazenieContext,i)


        def Przypisanie(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Przypisanie)
            else:
                return self.getToken(ParserV2.Przypisanie, i)

        def Zwiekszenie(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Zwiekszenie)
            else:
                return self.getToken(ParserV2.Zwiekszenie, i)

        def Zmniejszenie(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Zmniejszenie)
            else:
                return self.getToken(ParserV2.Zmniejszenie, i)

        def Wymnozenie(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Wymnozenie)
            else:
                return self.getToken(ParserV2.Wymnozenie, i)

        def Wydzielenie(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Wydzielenie)
            else:
                return self.getToken(ParserV2.Wydzielenie, i)

        def getRuleIndex(self):
            return ParserV2.RULE_standardowePolecenie

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterStandardowePolecenie" ):
                listener.enterStandardowePolecenie(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitStandardowePolecenie" ):
                listener.exitStandardowePolecenie(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitStandardowePolecenie" ):
                return visitor.visitStandardowePolecenie(self)
            else:
                return visitor.visitChildren(self)




    def standardowePolecenie(self):

        localctx = ParserV2.StandardowePolecenieContext(self, self._ctx, self.state)
        self.enterRule(localctx, 22, self.RULE_standardowePolecenie)
        self._la = 0 # Token type
        try:
            self.state = 170
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,13,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 156
                self.typZmiennej()
                self.state = 157
                self.match(ParserV2.Spacja)
                self.state = 158
                self.zmienna()
                self.state = 161 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                while True:
                    self.state = 159
                    _la = self._input.LA(1)
                    if not((((_la) & ~0x3f) == 0 and ((1 << _la) & 266287972352) != 0)):
                        self._errHandler.recoverInline(self)
                    else:
                        self._errHandler.reportMatch(self)
                        self.consume()
                    self.state = 160
                    self.wyrazenie()
                    self.state = 163 
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & 266287972352) != 0)):
                        break

                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 165
                self.zmienna()
                self.state = 166
                _la = self._input.LA(1)
                if not((((_la) & ~0x3f) == 0 and ((1 << _la) & 266287972352) != 0)):
                    self._errHandler.recoverInline(self)
                else:
                    self._errHandler.reportMatch(self)
                    self.consume()
                self.state = 167
                self.wyrazenie()
                pass

            elif la_ == 3:
                self.enterOuterAlt(localctx, 3)
                self.state = 169
                self.wyrazenie()
                pass


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class WyrazenieContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def zmienna(self):
            return self.getTypedRuleContext(ParserV2.ZmiennaContext,0)


        def Inkrementacja(self):
            return self.getToken(ParserV2.Inkrementacja, 0)

        def Dekrementacja(self):
            return self.getToken(ParserV2.Dekrementacja, 0)

        def operand(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.OperandContext)
            else:
                return self.getTypedRuleContext(ParserV2.OperandContext,i)


        def operator(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.OperatorContext)
            else:
                return self.getTypedRuleContext(ParserV2.OperatorContext,i)


        def ZnakZapytania(self):
            return self.getToken(ParserV2.ZnakZapytania, 0)

        def Dwukropek(self):
            return self.getToken(ParserV2.Dwukropek, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_wyrazenie

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterWyrazenie" ):
                listener.enterWyrazenie(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitWyrazenie" ):
                listener.exitWyrazenie(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitWyrazenie" ):
                return visitor.visitWyrazenie(self)
            else:
                return visitor.visitChildren(self)




    def wyrazenie(self):

        localctx = ParserV2.WyrazenieContext(self, self._ctx, self.state)
        self.enterRule(localctx, 24, self.RULE_wyrazenie)
        self._la = 0 # Token type
        try:
            self.state = 192
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,15,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 172
                self.zmienna()
                self.state = 173
                _la = self._input.LA(1)
                if not(_la==8 or _la==9):
                    self._errHandler.recoverInline(self)
                else:
                    self._errHandler.reportMatch(self)
                    self.consume()
                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 175
                _la = self._input.LA(1)
                if not(_la==8 or _la==9):
                    self._errHandler.recoverInline(self)
                else:
                    self._errHandler.reportMatch(self)
                    self.consume()
                self.state = 176
                self.zmienna()
                pass

            elif la_ == 3:
                self.enterOuterAlt(localctx, 3)
                self.state = 177
                self.operand()
                self.state = 183
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,14,self._ctx)
                while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                    if _alt==1:
                        self.state = 178
                        self.operator()
                        self.state = 179
                        self.operand() 
                    self.state = 185
                    self._errHandler.sync(self)
                    _alt = self._interp.adaptivePredict(self._input,14,self._ctx)

                pass

            elif la_ == 4:
                self.enterOuterAlt(localctx, 4)
                self.state = 186
                self.zmienna()
                self.state = 187
                self.match(ParserV2.ZnakZapytania)
                self.state = 188
                self.operand()
                self.state = 189
                self.match(ParserV2.Dwukropek)
                self.state = 190
                self.operand()
                pass


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class OperandContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def zmienna(self):
            return self.getTypedRuleContext(ParserV2.ZmiennaContext,0)


        def wartosc(self):
            return self.getTypedRuleContext(ParserV2.WartoscContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_operand

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterOperand" ):
                listener.enterOperand(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitOperand" ):
                listener.exitOperand(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitOperand" ):
                return visitor.visitOperand(self)
            else:
                return visitor.visitChildren(self)




    def operand(self):

        localctx = ParserV2.OperandContext(self, self._ctx, self.state)
        self.enterRule(localctx, 26, self.RULE_operand)
        try:
            self.state = 196
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [49, 51]:
                self.enterOuterAlt(localctx, 1)
                self.state = 194
                self.zmienna()
                pass
            elif token in [23, 24, 52, 53, 54, 56]:
                self.enterOuterAlt(localctx, 2)
                self.state = 195
                self.wartosc()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class ZmiennaContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def NAZWA(self):
            return self.getToken(ParserV2.NAZWA, 0)

        def ZMIENNA_CHAR(self):
            return self.getToken(ParserV2.ZMIENNA_CHAR, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_zmienna

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterZmienna" ):
                listener.enterZmienna(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitZmienna" ):
                listener.exitZmienna(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitZmienna" ):
                return visitor.visitZmienna(self)
            else:
                return visitor.visitChildren(self)




    def zmienna(self):

        localctx = ParserV2.ZmiennaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 28, self.RULE_zmienna)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 198
            _la = self._input.LA(1)
            if not(_la==49 or _la==51):
                self._errHandler.recoverInline(self)
            else:
                self._errHandler.reportMatch(self)
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class TypZmiennejContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def TypZnakowy(self):
            return self.getToken(ParserV2.TypZnakowy, 0)

        def TypWieloznakowy(self):
            return self.getToken(ParserV2.TypWieloznakowy, 0)

        def TypCalkowity(self):
            return self.getToken(ParserV2.TypCalkowity, 0)

        def TypZmiennoprzecinkowy(self):
            return self.getToken(ParserV2.TypZmiennoprzecinkowy, 0)

        def TypLogiczny(self):
            return self.getToken(ParserV2.TypLogiczny, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_typZmiennej

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterTypZmiennej" ):
                listener.enterTypZmiennej(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitTypZmiennej" ):
                listener.exitTypZmiennej(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitTypZmiennej" ):
                return visitor.visitTypZmiennej(self)
            else:
                return visitor.visitChildren(self)




    def typZmiennej(self):

        localctx = ParserV2.TypZmiennejContext(self, self._ctx, self.state)
        self.enterRule(localctx, 30, self.RULE_typZmiennej)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 200
            _la = self._input.LA(1)
            if not((((_la) & ~0x3f) == 0 and ((1 << _la) & 8126464) != 0)):
                self._errHandler.recoverInline(self)
            else:
                self._errHandler.reportMatch(self)
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class CoutContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Cout(self):
            return self.getToken(ParserV2.Cout, 0)

        def ZnakMniejszosci(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.ZnakMniejszosci)
            else:
                return self.getToken(ParserV2.ZnakMniejszosci, i)

        def Endl(self):
            return self.getToken(ParserV2.Endl, 0)

        def Srednik(self):
            return self.getToken(ParserV2.Srednik, 0)

        def nowaLinia(self):
            return self.getTypedRuleContext(ParserV2.NowaLiniaContext,0)


        def wyrazenie(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.WyrazenieContext)
            else:
                return self.getTypedRuleContext(ParserV2.WyrazenieContext,i)


        def getRuleIndex(self):
            return ParserV2.RULE_cout

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterCout" ):
                listener.enterCout(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitCout" ):
                listener.exitCout(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitCout" ):
                return visitor.visitCout(self)
            else:
                return visitor.visitChildren(self)




    def cout(self):

        localctx = ParserV2.CoutContext(self, self._ctx, self.state)
        self.enterRule(localctx, 32, self.RULE_cout)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 202
            self.match(ParserV2.Cout)
            self.state = 208
            self._errHandler.sync(self)
            _alt = self._interp.adaptivePredict(self._input,17,self._ctx)
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt==1:
                    self.state = 203
                    self.match(ParserV2.ZnakMniejszosci)
                    self.state = 204
                    self.match(ParserV2.ZnakMniejszosci)
                    self.state = 205
                    self.wyrazenie() 
                self.state = 210
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,17,self._ctx)

            self.state = 211
            self.match(ParserV2.ZnakMniejszosci)
            self.state = 212
            self.match(ParserV2.ZnakMniejszosci)
            self.state = 213
            self.match(ParserV2.Endl)
            self.state = 214
            self.match(ParserV2.Srednik)
            self.state = 215
            self.nowaLinia()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class CinContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Cin(self):
            return self.getToken(ParserV2.Cin, 0)

        def Srednik(self):
            return self.getToken(ParserV2.Srednik, 0)

        def nowaLinia(self):
            return self.getTypedRuleContext(ParserV2.NowaLiniaContext,0)


        def ZnakWiekszosci(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.ZnakWiekszosci)
            else:
                return self.getToken(ParserV2.ZnakWiekszosci, i)

        def wyrazenie(self, i:int=None):
            if i is None:
                return self.getTypedRuleContexts(ParserV2.WyrazenieContext)
            else:
                return self.getTypedRuleContext(ParserV2.WyrazenieContext,i)


        def Endl(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Endl)
            else:
                return self.getToken(ParserV2.Endl, i)

        def getRuleIndex(self):
            return ParserV2.RULE_cin

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterCin" ):
                listener.enterCin(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitCin" ):
                listener.exitCin(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitCin" ):
                return visitor.visitCin(self)
            else:
                return visitor.visitChildren(self)




    def cin(self):

        localctx = ParserV2.CinContext(self, self._ctx, self.state)
        self.enterRule(localctx, 34, self.RULE_cin)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 217
            self.match(ParserV2.Cin)
            self.state = 223
            self._errHandler.sync(self)
            _alt = self._interp.adaptivePredict(self._input,18,self._ctx)
            while _alt!=2 and _alt!=ATN.INVALID_ALT_NUMBER:
                if _alt==1:
                    self.state = 218
                    self.match(ParserV2.ZnakWiekszosci)
                    self.state = 219
                    self.match(ParserV2.ZnakWiekszosci)
                    self.state = 220
                    self.wyrazenie() 
                self.state = 225
                self._errHandler.sync(self)
                _alt = self._interp.adaptivePredict(self._input,18,self._ctx)

            self.state = 229 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 226
                self.match(ParserV2.ZnakWiekszosci)
                self.state = 227
                self.match(ParserV2.ZnakWiekszosci)
                self.state = 228
                self.match(ParserV2.Endl)
                self.state = 231 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==27):
                    break

            self.state = 233
            self.match(ParserV2.Srednik)
            self.state = 234
            self.nowaLinia()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class WartoscContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def wartoscLiczbowa(self):
            return self.getTypedRuleContext(ParserV2.WartoscLiczbowaContext,0)


        def wartoscZnakowa(self):
            return self.getTypedRuleContext(ParserV2.WartoscZnakowaContext,0)


        def wartoscLogiczna(self):
            return self.getTypedRuleContext(ParserV2.WartoscLogicznaContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_wartosc

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterWartosc" ):
                listener.enterWartosc(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitWartosc" ):
                listener.exitWartosc(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitWartosc" ):
                return visitor.visitWartosc(self)
            else:
                return visitor.visitChildren(self)




    def wartosc(self):

        localctx = ParserV2.WartoscContext(self, self._ctx, self.state)
        self.enterRule(localctx, 36, self.RULE_wartosc)
        try:
            self.state = 239
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [53, 54]:
                self.enterOuterAlt(localctx, 1)
                self.state = 236
                self.wartoscLiczbowa()
                pass
            elif token in [52, 56]:
                self.enterOuterAlt(localctx, 2)
                self.state = 237
                self.wartoscZnakowa()
                pass
            elif token in [23, 24]:
                self.enterOuterAlt(localctx, 3)
                self.state = 238
                self.wartoscLogiczna()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class WartoscLiczbowaContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Zero(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Zero)
            else:
                return self.getToken(ParserV2.Zero, i)

        def LICZBA(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.LICZBA)
            else:
                return self.getToken(ParserV2.LICZBA, i)

        def KROPKA(self):
            return self.getToken(ParserV2.KROPKA, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_wartoscLiczbowa

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterWartoscLiczbowa" ):
                listener.enterWartoscLiczbowa(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitWartoscLiczbowa" ):
                listener.exitWartoscLiczbowa(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitWartoscLiczbowa" ):
                return visitor.visitWartoscLiczbowa(self)
            else:
                return visitor.visitChildren(self)




    def wartoscLiczbowa(self):

        localctx = ParserV2.WartoscLiczbowaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 38, self.RULE_wartoscLiczbowa)
        self._la = 0 # Token type
        try:
            self.state = 255
            self._errHandler.sync(self)
            la_ = self._interp.adaptivePredict(self._input,23,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 241
                self.match(ParserV2.Zero)
                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 242
                self.match(ParserV2.LICZBA)
                pass

            elif la_ == 3:
                self.enterOuterAlt(localctx, 3)
                self.state = 253
                self._errHandler.sync(self)
                token = self._input.LA(1)
                if token in [53]:
                    self.state = 243
                    self.match(ParserV2.Zero)
                    pass
                elif token in [54]:
                    self.state = 244
                    self.match(ParserV2.LICZBA)
                    self.state = 245
                    self.match(ParserV2.KROPKA)
                    self.state = 249
                    self._errHandler.sync(self)
                    _la = self._input.LA(1)
                    while _la==53:
                        self.state = 246
                        self.match(ParserV2.Zero)
                        self.state = 251
                        self._errHandler.sync(self)
                        _la = self._input.LA(1)

                    self.state = 252
                    self.match(ParserV2.LICZBA)
                    pass
                else:
                    raise NoViableAltException(self)

                pass


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class WartoscZnakowaContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def STRING(self):
            return self.getToken(ParserV2.STRING, 0)

        def Apostrof(self, i:int=None):
            if i is None:
                return self.getTokens(ParserV2.Apostrof)
            else:
                return self.getToken(ParserV2.Apostrof, i)

        def ZMIENNA_CHAR(self):
            return self.getToken(ParserV2.ZMIENNA_CHAR, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_wartoscZnakowa

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterWartoscZnakowa" ):
                listener.enterWartoscZnakowa(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitWartoscZnakowa" ):
                listener.exitWartoscZnakowa(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitWartoscZnakowa" ):
                return visitor.visitWartoscZnakowa(self)
            else:
                return visitor.visitChildren(self)




    def wartoscZnakowa(self):

        localctx = ParserV2.WartoscZnakowaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 40, self.RULE_wartoscZnakowa)
        try:
            self.state = 261
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [52]:
                self.enterOuterAlt(localctx, 1)
                self.state = 257
                self.match(ParserV2.STRING)
                pass
            elif token in [56]:
                self.enterOuterAlt(localctx, 2)
                self.state = 258
                self.match(ParserV2.Apostrof)
                self.state = 259
                self.match(ParserV2.ZMIENNA_CHAR)
                self.state = 260
                self.match(ParserV2.Apostrof)
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class WartoscLogicznaContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Prawda(self):
            return self.getToken(ParserV2.Prawda, 0)

        def Herezja(self):
            return self.getToken(ParserV2.Herezja, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_wartoscLogiczna

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterWartoscLogiczna" ):
                listener.enterWartoscLogiczna(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitWartoscLogiczna" ):
                listener.exitWartoscLogiczna(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitWartoscLogiczna" ):
                return visitor.visitWartoscLogiczna(self)
            else:
                return visitor.visitChildren(self)




    def wartoscLogiczna(self):

        localctx = ParserV2.WartoscLogicznaContext(self, self._ctx, self.state)
        self.enterRule(localctx, 42, self.RULE_wartoscLogiczna)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 263
            _la = self._input.LA(1)
            if not(_la==23 or _la==24):
                self._errHandler.recoverInline(self)
            else:
                self._errHandler.reportMatch(self)
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class OperatorContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def operatorLogiczny(self):
            return self.getTypedRuleContext(ParserV2.OperatorLogicznyContext,0)


        def operatorArytmetyczny(self):
            return self.getTypedRuleContext(ParserV2.OperatorArytmetycznyContext,0)


        def operatorRelacyjny(self):
            return self.getTypedRuleContext(ParserV2.OperatorRelacyjnyContext,0)


        def getRuleIndex(self):
            return ParserV2.RULE_operator

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterOperator" ):
                listener.enterOperator(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitOperator" ):
                listener.exitOperator(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitOperator" ):
                return visitor.visitOperator(self)
            else:
                return visitor.visitChildren(self)




    def operator(self):

        localctx = ParserV2.OperatorContext(self, self._ctx, self.state)
        self.enterRule(localctx, 44, self.RULE_operator)
        try:
            self.state = 268
            self._errHandler.sync(self)
            token = self._input.LA(1)
            if token in [38, 39, 40]:
                self.enterOuterAlt(localctx, 1)
                self.state = 265
                self.operatorLogiczny()
                pass
            elif token in [1, 2, 3, 4, 5]:
                self.enterOuterAlt(localctx, 2)
                self.state = 266
                self.operatorArytmetyczny()
                pass
            elif token in [25, 26, 27, 28, 29, 30]:
                self.enterOuterAlt(localctx, 3)
                self.state = 267
                self.operatorRelacyjny()
                pass
            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class OperatorArytmetycznyContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Dodawanie(self):
            return self.getToken(ParserV2.Dodawanie, 0)

        def Odejmowanie(self):
            return self.getToken(ParserV2.Odejmowanie, 0)

        def Mnozenie(self):
            return self.getToken(ParserV2.Mnozenie, 0)

        def Dzielenie(self):
            return self.getToken(ParserV2.Dzielenie, 0)

        def Modulo(self):
            return self.getToken(ParserV2.Modulo, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_operatorArytmetyczny

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterOperatorArytmetyczny" ):
                listener.enterOperatorArytmetyczny(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitOperatorArytmetyczny" ):
                listener.exitOperatorArytmetyczny(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitOperatorArytmetyczny" ):
                return visitor.visitOperatorArytmetyczny(self)
            else:
                return visitor.visitChildren(self)




    def operatorArytmetyczny(self):

        localctx = ParserV2.OperatorArytmetycznyContext(self, self._ctx, self.state)
        self.enterRule(localctx, 46, self.RULE_operatorArytmetyczny)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 270
            _la = self._input.LA(1)
            if not((((_la) & ~0x3f) == 0 and ((1 << _la) & 62) != 0)):
                self._errHandler.recoverInline(self)
            else:
                self._errHandler.reportMatch(self)
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class OperatorRelacyjnyContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Porownanie(self):
            return self.getToken(ParserV2.Porownanie, 0)

        def ZnakMniejszosci(self):
            return self.getToken(ParserV2.ZnakMniejszosci, 0)

        def ZnakWiekszosci(self):
            return self.getToken(ParserV2.ZnakWiekszosci, 0)

        def ZnakMniejszosciLubRownosci(self):
            return self.getToken(ParserV2.ZnakMniejszosciLubRownosci, 0)

        def ZnakWiekszosciLubRownosci(self):
            return self.getToken(ParserV2.ZnakWiekszosciLubRownosci, 0)

        def ZnakNierownosci(self):
            return self.getToken(ParserV2.ZnakNierownosci, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_operatorRelacyjny

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterOperatorRelacyjny" ):
                listener.enterOperatorRelacyjny(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitOperatorRelacyjny" ):
                listener.exitOperatorRelacyjny(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitOperatorRelacyjny" ):
                return visitor.visitOperatorRelacyjny(self)
            else:
                return visitor.visitChildren(self)




    def operatorRelacyjny(self):

        localctx = ParserV2.OperatorRelacyjnyContext(self, self._ctx, self.state)
        self.enterRule(localctx, 48, self.RULE_operatorRelacyjny)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 272
            _la = self._input.LA(1)
            if not((((_la) & ~0x3f) == 0 and ((1 << _la) & 2113929216) != 0)):
                self._errHandler.recoverInline(self)
            else:
                self._errHandler.reportMatch(self)
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx


    class OperatorLogicznyContext(ParserRuleContext):
        __slots__ = 'parser'

        def __init__(self, parser, parent:ParserRuleContext=None, invokingState:int=-1):
            super().__init__(parent, invokingState)
            self.parser = parser

        def Lub(self):
            return self.getToken(ParserV2.Lub, 0)

        def I(self):
            return self.getToken(ParserV2.I, 0)

        def Nie(self):
            return self.getToken(ParserV2.Nie, 0)

        def getRuleIndex(self):
            return ParserV2.RULE_operatorLogiczny

        def enterRule(self, listener:ParseTreeListener):
            if hasattr( listener, "enterOperatorLogiczny" ):
                listener.enterOperatorLogiczny(self)

        def exitRule(self, listener:ParseTreeListener):
            if hasattr( listener, "exitOperatorLogiczny" ):
                listener.exitOperatorLogiczny(self)

        def accept(self, visitor:ParseTreeVisitor):
            if hasattr( visitor, "visitOperatorLogiczny" ):
                return visitor.visitOperatorLogiczny(self)
            else:
                return visitor.visitChildren(self)




    def operatorLogiczny(self):

        localctx = ParserV2.OperatorLogicznyContext(self, self._ctx, self.state)
        self.enterRule(localctx, 50, self.RULE_operatorLogiczny)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 274
            _la = self._input.LA(1)
            if not((((_la) & ~0x3f) == 0 and ((1 << _la) & 1924145348608) != 0)):
                self._errHandler.recoverInline(self)
            else:
                self._errHandler.reportMatch(self)
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx





