parser grammar Parser;
options {
	tokenVocab = Lexer;
}

symbolStartowy: dyrektywyPreprocesora FunkcjaGlowna LewaKlamra kod PrawaKlamra;

dyrektywyPreprocesora: include*;

include: Include ZnakMniejszosci ZMIENNA_CHAR ZMIENNA_CHAR* ZnakWiekszosci;

kod: (instrukcja|polecenie)*;

instrukcja: if|while|for;

if: If LewyNawias wartoscLogiczna PrawyNawias LewaKlamra kod PrawaKlamra else;

else: (else if| else kod);

while: While LewyNawias wartoscLogiczna PrawyNawias LewaKlamra kod PrawaKlamra;

for: For LewyNawias operacja wartoscLogiczna operacja PrawyNawias LewaKlamra kod PrawaKlamra;

polecenie: 
    (typZmiennej+ nazwaZmiennej (Przypisanie|Zwiekszenie|Zmniejszenie|Wymnozenie|Wydzielenie))+ operacja Srednik;
//pojedyncza linijka, w nawiasie to kolejno =, +=, -=, *=, /=, ++, --

operacja:
    zmienna Inkrementacja | zmienna Dekrementacja | Dekrementacja zmienna | Inkrementacja zmienna
    | zmienna (operatorTypuB zmienna)*
    | zmienna ZnakZapytania zmienna Dwukropek zmienna;

nazwaZmiennej: CHAR_LITEROWY ZMIENNA_CHAR*;

zmienna : nazwaZmiennej|wartoscLiczbowa|wartoscZnakowa|wartoscLogiczna;

typZmiennej: TypZnakowy|TypCalkowity|TypZmiennoprzecinkowy|TypLogiczny;

operatorTypuB: Dodawanie|Odejmowanie|Mnozenie|Dzielenie|Modulo;

wartoscLiczbowa: CYFRA_NIE_ZERO CYFRA* (KROPKA CYFRA*)+;

wartoscZnakowa: string| Apostrof ZMIENNA_CHAR Apostrof;

string: Cudzyslow ZMIENNA_CHAR* Cudzyslow;

wartoscLogiczna: (zmienna porownanie zmienna)|Prawda|Herezja;

porownanie: Porownanie|ZnakMniejszosci|ZnakWiekszosci|ZnakMniejszosciLubRownosci|ZnakWiekszosciLubRownosci|ZnakNierownosci;
