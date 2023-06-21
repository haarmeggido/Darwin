lexer grammar LexerV2;

Dodawanie: '+';
Odejmowanie: '-';
Mnozenie: '*';
Dzielenie: '/';
Modulo: '%';

Dwukropek: ':';
ZnakZapytania: '?';
Inkrementacja: '++';
Dekrementacja: '--';

For: 'for';
While: 'while';
If: 'if';
Else: 'else';

LewyNawias: '(';
PrawyNawias: ')';
LewaKlamra: '{';
PrawaKlamra: '}';

TypZnakowy: 'char';
TypCalkowity: 'int';
TypZmiennoprzecinkowy: 'float';
TypLogiczny: 'bool';
TypWieloznakowy: 'string';

Prawda: 'true';
Herezja: 'false';

Porownanie: '==';
ZnakMniejszosci: '<';
ZnakWiekszosci: '>';
ZnakMniejszosciLubRownosci: '<=';
ZnakWiekszosciLubRownosci: '>=';
ZnakNierownosci: '!=';

Include: '#include';
FunkcjaGlowna:'int glowna()';

Przypisanie:'=';
Zwiekszenie:'+=';
Zmniejszenie:'-=';
Wymnozenie:'*=';
Wydzielenie:'/=';

Lub: '||';
I: '&&';
Nie: '!';

Srednik: ';';
Przecinek: ',';
Spacja: ' ';
NowaLinia: [\n\r][\n\r]*;

Cout: 'cout';
Cin: 'cin';
Endl: 'endl';

UsingNamespace: 'using namespace ';

ZMIENNA_CHAR: .; //dowolny znak
CHAR_LITEROWY: [a-zA-Z];
NAZWA: [A-Za-z][A-Za-z0-9]*;

Zero: '0';
LICZBA: [1-9][0-9]*;

KROPKA: '.'; //zwykla kropka

Apostrof: '\'';
Cudzyslow: '"';
