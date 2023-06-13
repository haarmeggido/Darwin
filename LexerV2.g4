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
NowaLinia: '\n';

Cout: 'cout';
Cin: 'cin';
Endl: 'endl';

Std: 'using namespace std;';
UsingNamespace: 'using namespace ';

ZMIENNA_CHAR: .; //dowolny znak
CHAR_LITEROWY_LUB_CYFROWY: [a-zA-Z0-9];
CHAR_LITEROWY: [a-zA-Z]; //???

CYFRA: [0-9];
CYFRA_NIE_ZERO: [1-9];
Zero: '0';

KROPKA: '.'; //zwykla kropka

Apostrof: '\'';
Cudzyslow: '"';
