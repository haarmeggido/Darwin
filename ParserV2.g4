parser grammar ParserV2;
options {
	tokenVocab = LexerV2;
}

symbolStartowy: include* Std NowaLinia using* FunkcjaGlowna LewaKlamra NowaLinia kod PrawaKlamra;

include: Include ZnakMniejszosci CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY* ZnakWiekszosci NowaLinia;

using: UsingNamespace Spacja zmienna Srednik NowaLinia;

kod: (instrukcja|(standardowePolecenie Srednik+ NowaLinia+)|cin|cout)*;

instrukcja: if|while|for;

if: If LewyNawias wyrazenie PrawyNawias poInstrukcji else+;

else: Else (Spacja if)|poInstrukcji; //Spacja jest zawsze tak na wszelki, bo tu nie ma nawiasu

while: While LewyNawias wyrazenie PrawyNawias poInstrukcji;

for: For LewyNawias standardowePolecenie Przecinek wyrazenie Przecinek standardowePolecenie PrawyNawias poInstrukcji;

poInstrukcji: instrukcja|standardowePolecenie|(LewaKlamra NowaLinia kod PrawaKlamra NowaLinia);

//utworzenie zmiennej, modyfikacja zmiennej

standardowePolecenie:
    (typZmiennej Spacja zmienna ((Przypisanie|Zwiekszenie|Zmniejszenie|Wymnozenie|Wydzielenie) wyrazenie)+)
    |((zmienna (Przypisanie|Zwiekszenie|Zmniejszenie|Wymnozenie|Wydzielenie))+ wyrazenie);

//pojedyncza linijka, w nawiasie to kolejno =, +=, -=, *=, /=

wyrazenie:
    zmienna (Inkrementacja|Dekrementacja) | (Inkrementacja|Dekrementacja) zmienna
    | operand (operator operand)*
    | zmienna ZnakZapytania operand Dwukropek operand; //zminimalizowana wersja, by uniknąć komplikacji

operand: zmienna|wartosc;

zmienna: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY*; //od teraz zmienna to po prostu nazwa zmiennej

typZmiennej: TypZnakowy|TypWieloznakowy|TypCalkowity|TypZmiennoprzecinkowy|TypLogiczny;

cout: Cout (ZnakMniejszosci ZnakMniejszosci wyrazenie)* (ZnakMniejszosci ZnakMniejszosci Endl)+ Srednik NowaLinia;

cin: Cin (ZnakMniejszosci ZnakMniejszosci wyrazenie)* (ZnakMniejszosci ZnakMniejszosci Endl)+ Srednik NowaLinia;

wartosc: wartoscLiczbowa | wartoscZnakowa | wartoscLogiczna;

wartoscLiczbowa: Zero | (CYFRA_NIE_ZERO CYFRA*) (KROPKA CYFRA*)+;

wartoscZnakowa: (Cudzyslow ZMIENNA_CHAR* Cudzyslow) | (Apostrof ZMIENNA_CHAR Apostrof);

wartoscLogiczna: Prawda|Herezja;//tu dokonalem duzej zmiany, sprawdzic potem

operator: operatorLogiczny|operatorArytmetyczny|operatorRelacyjny;

operatorArytmetyczny: Dodawanie|Odejmowanie|Mnozenie|Dzielenie|Modulo;

operatorRelacyjny: Porownanie|ZnakMniejszosci|ZnakWiekszosci|ZnakMniejszosciLubRownosci|ZnakWiekszosciLubRownosci|ZnakNierownosci;

operatorLogiczny: Lub|I|Nie;
