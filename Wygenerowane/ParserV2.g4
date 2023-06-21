parser grammar ParserV2;
options {
	tokenVocab = LexerV2;
}

symbolStartowy: (include|using)* FunkcjaGlowna LewaKlamra nowaLinia kod PrawaKlamra;

nowaLinia: NowaLinia; //NowaLinia|NowaLiniaV2;

include: Include ZnakMniejszosci zmienna ZnakWiekszosci nowaLinia;

using: UsingNamespace zmienna Srednik nowaLinia;

kod: (instrukcja|(standardowePolecenie Srednik+ nowaLinia+)|cin|cout)*;

instrukcja: if|while|for;

if: If LewyNawias wyrazenie PrawyNawias poInstrukcji Srednik+ NowaLinia+ else+;

else: Else (Spacja if)|poInstrukcji; //Spacja jest zawsze tak na wszelki, bo tu nie ma nawiasu

while: While LewyNawias wyrazenie PrawyNawias poInstrukcji;

for: For LewyNawias standardowePolecenie Przecinek wyrazenie Przecinek standardowePolecenie PrawyNawias poInstrukcji;

poInstrukcji: cin|cout|instrukcja|standardowePolecenie|(LewaKlamra nowaLinia kod PrawaKlamra nowaLinia);

//utworzenie zmiennej, modyfikacja zmiennej

standardowePolecenie:
    (typZmiennej Spacja zmienna ((Przypisanie|Zwiekszenie|Zmniejszenie|Wymnozenie|Wydzielenie) wyrazenie)+)
    |(zmienna (Przypisanie|Zwiekszenie|Zmniejszenie|Wymnozenie|Wydzielenie) wyrazenie)
    |wyrazenie;

//pojedyncza linijka, w nawiasie to kolejno =, +=, -=, *=, /=

wyrazenie:
    (zmienna (Inkrementacja|Dekrementacja)) 
    | ((Inkrementacja|Dekrementacja) zmienna)
    | (operand (operator operand)*)
    | (zmienna ZnakZapytania operand Dwukropek operand); //zminimalizowana wersja, by uniknąć komplikacji

operand: zmienna|wartosc;

zmienna: NAZWA|ZMIENNA_CHAR; //od teraz zmienna to po prostu nazwa zmiennej

typZmiennej: TypZnakowy|TypWieloznakowy|TypCalkowity|TypZmiennoprzecinkowy|TypLogiczny;

cout: Cout (ZnakMniejszosci ZnakMniejszosci wyrazenie)* ZnakMniejszosci ZnakMniejszosci Endl Srednik nowaLinia;

cin: Cin (ZnakWiekszosci ZnakWiekszosci wyrazenie)* (ZnakWiekszosci ZnakWiekszosci Endl)+ Srednik nowaLinia;

wartosc: wartoscLiczbowa | wartoscZnakowa | wartoscLogiczna;

wartoscLiczbowa: Zero | LICZBA | (Zero|LICZBA KROPKA Zero* LICZBA);// ZMIENNA_CHAR | Zero | (CYFRA_NIE_ZERO CYFRA*) (KROPKA CYFRA*)+;

wartoscZnakowa: STRING | (Apostrof ZMIENNA_CHAR Apostrof); // CUDZYSLOW ZMIENNA_CHAR* CUDZYSLOW

wartoscLogiczna: Prawda|Herezja;//tu dokonalem duzej zmiany, sprawdzic potem

operator: operatorLogiczny|operatorArytmetyczny|operatorRelacyjny;

operatorArytmetyczny: Dodawanie|Odejmowanie|Mnozenie|Dzielenie|Modulo;

operatorRelacyjny: Porownanie|ZnakMniejszosci|ZnakWiekszosci|ZnakMniejszosciLubRownosci|ZnakWiekszosciLubRownosci|ZnakNierownosci;

operatorLogiczny: Lub|I|Nie;