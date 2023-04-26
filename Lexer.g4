lexer grammar Lexer;

LiterałCałkowity:
	DecimalLiteral Integersuffix?
	| OctalLiteral Integersuffix?
	| HexadecimalLiteral Integersuffix?
	| BinaryLiteral Integersuffix?;

LiterałSymbolu:
	('u' | 'U' | 'L')? '\'' Cchar+ '\'';

LiterałZmiennoprzecinkowy:
	Fractionalconstant Exponentpart? Floatingsuffix?
	| Digitsequence Exponentpart Floatingsuffix?;

LiterałŁańcuchowy:
	Encodingprefix?
    (Rawstring
	|'"' Schar* '"');

LiterałLogiczny: False_ | True_;

LiterałWskaźnikowy: Pustywskaźnik;

LiterałStworzonyPrzezUżytkownika:
	UserDefinedIntegerLiteral
	| UserDefinedFloatingLiteral
	| UserDefinedStringLiteral
	| UserDefinedCharacterLiteral;

MultiLineMacro:
	'#' (~[\n]*? '\\' '\r'? '\n')+ ~ [\n]+ -> channel (HIDDEN);

Directive: '#' ~ [\n]* -> channel (HIDDEN);
/*Keywords*/

Alignas: 'alignas';

Alignof: 'alignof';

Asm: 'asm';

Auto: 'auto';

Bool: 'bool';

Rozłam: 'rozłam';

Przypadek: 'przypadek';

Złap: 'złap';

Znak: 'znak';

Znak16_t: 'znak16_t';

Znak32_t: 'znak32_t';

Klasa: 'klasa';

Stała: 'stała';

Constexpr: 'constexpr';

StałyRzut: 'stały_rzut';

Kontynuuj: 'kontynuuj';

Dekltyp: 'dekltyp';

Domyślny: 'domyślny';

Usuń: 'usuń';

Rób: 'rób';

Podwójny: 'podwójny';

DynamicznyRzut: 'dynamiczny_rzut';

Jeśli_nie: 'jeśli_nie';

Wyliczenie: 'wyliczenie';

Sprecyzowany: 'sprecyzowany'; //odpowiednik explicit

Wyeksportuj: 'wyeksportuj';

Zewnętrzny: 'zewnętrzny';

//DO NOT RENAME - PYTHON NEEDS True and False
False_: 'herezja'; //Nie wiem, czy powinno się to tłumaczyć

Ostateczny: 'ostateczny';

Zmiennoprzecinkowy: 'zmiennoprzecinkowy';

Dla: 'dla';

Przyjaciel: 'przyjaciel';

IdźDo: 'idźdo';

W_przypadku_gdy: 'w_przypadku_gdy';

WLinii: 'wlinii';

Całk: 'całk';

Długa: 'długa';

Zmienny: 'zmienny'; //może zmienialny

Przestrzeńnazw: 'przestrzeńnazw';

Nowy: 'nowy';

Bezwyjątków: 'bezwyjątków';

Pustywskaźnik: 'pustywskaźnik';

Operator: 'operator';

Nadpisanie: 'nadpisanie'; //albo nadpisanie

Prywatna: 'prywatna';

Chroniona: 'chroniona';

Publiczna: 'publiczna';

DoWykazu: 'dowykazu';

ZreinterpretujRzut: 'zreinterpretuj_rzut';

Zwróć: 'zwróć';

Krótka: 'krótka';

Przypisana: 'przypisana';

Rozmiaru: 'rozmiaru';

Static: 'static';//!!!!!!

Statyczne_zapewnienie: 'statyczne_zapewnienie';

StatycznyRzut: 'statyczny_rzut';

Struktura: 'struktura';

Przełącz: 'przełącz';

Szablon: 'szablon';

To: 'to';

WątekLokalny: 'wątek_lokalny';

Wyrzuć: 'wyrzuć';

//DO NOT RENAME - PYTHON NEEDS True and False
True_: 'objawienie'; //propozycji wiele: prawda, objawienie, fakt, wiara

Spróbuj: 'spróbuj';

DefiniowanieTypu: 'definiowanietypu';

WytypujId: 'wytypujid';

WytypujNazwę: 'wytypujnazwę';

Jedność: 'jedność';

Nieprzypisana: 'nieprzypisana'; //może poprawić

Używając: 'używając';

Wirtualna: 'wirtualna';

Otchłań: 'otchłań';

Zwiewna: 'zwiewna';

Wchar: 'wchar_t';

Dopóty: 'dopóty';
/*Operators*/

LewaParenteza: '(';

PrawaParenteza: ')';

LewyNawiasKwadratowy: '[';

PrawyNawiasKwadratowy: ']';

LewaKlamra: '{';

PrawaKlamra: '}';

Plus: '+';

Minus: '-';

Mnożenie: '*';

Dzielenie: '/';

Mod: '%';

Kareta: '^';
/*
adolf: '&';

ler: '|';
*/

Tylda: '~';

Nie: '!' | 'nie';

Przypisanie: '=';

MniejNiż: '<';

WięcejNiż: '>';

DodaniePrzypisanie: '+=';

OdjęciePrzypisanie: '-=';

PomnożeniePrzypisanie: '*=';

PodzieleniePrzypisanie: '/=';

ModułPrzypisanie: '%=';

/*
PotęgaPrzypisanie: '^=';

AndAssign: '&=';

OrAssign: '|=';

LeftShiftAssign: '<<=';

RightShiftAssign: '>>=';
*/

Równanie: '==';

NieRówne: '!=';

MniejRówneNiż: '<=';

WięcejRówneNiż: '>=';

Oraz: '&&' | 'Oraz';

Lub: '||' | 'lub';

Inkrementacja: '++';

Dekrementacja: '--';

Przecinek: ',';

StrzałkaGwiazdka: '->*';

Strzałka: '->';

Pytajnik: '?';

Dwukropek: ':';

Dwudwukropek: '::';

Średnik: ';';

Kropka: '.';

KropkaGwiazdka: '.*';

Elipsa: '...';

fragment Hexquad:
	HEXADECIMALDIGIT HEXADECIMALDIGIT HEXADECIMALDIGIT HEXADECIMALDIGIT;

fragment Universalcharactername:
	'\\u' Hexquad
	| '\\U' Hexquad Hexquad;

Identifier:
	/*
	 Identifiernondigit | Identifier Identifiernondigit | Identifier DIGIT
	 */
	Identifiernondigit (Identifiernondigit | DIGIT)*;

fragment Identifiernondigit: NONDIGIT | Universalcharactername;

fragment NONDIGIT: [a-zA-Z_];

fragment DIGIT: [0-9];

DecimalLiteral: NONZERODIGIT ('\''? DIGIT)*;

OctalLiteral: '0' ('\''? OCTALDIGIT)*;

HexadecimalLiteral: ('0x' | '0X') HEXADECIMALDIGIT (
		'\''? HEXADECIMALDIGIT
	)*;

BinaryLiteral: ('0b' | '0B') BINARYDIGIT ('\''? BINARYDIGIT)*;

fragment NONZERODIGIT: [1-9];

fragment OCTALDIGIT: [0-7];

fragment HEXADECIMALDIGIT: [0-9a-fA-F];

fragment BINARYDIGIT: [01];

Integersuffix:
	Unsignedsuffix Longsuffix?
	| Unsignedsuffix Longlongsuffix?
	| Longsuffix Unsignedsuffix?
	| Longlongsuffix Unsignedsuffix?;

fragment Unsignedsuffix: [uU];

fragment Longsuffix: [lL];

fragment Longlongsuffix: 'll' | 'LL';

fragment Cchar:
	~ ['\\\r\n]
	| Escapesequence
	| Universalcharactername;
fragment Escapesequence:
	Simpleescapesequence
	| Octalescapesequence
	| Hexadecimalescapesequence;
fragment Simpleescapesequence:
	'\\\''
	| '\\"'
	| '\\?'
	| '\\\\'
	| '\\a'
	| '\\b'
	| '\\f'
	| '\\n'
	| '\\r'
	| ('\\' ('\r' '\n'? | '\n'))
	| '\\t'
	| '\\v';

fragment Octalescapesequence:
	'\\' OCTALDIGIT
	| '\\' OCTALDIGIT OCTALDIGIT
	| '\\' OCTALDIGIT OCTALDIGIT OCTALDIGIT;

fragment Hexadecimalescapesequence: '\\x' HEXADECIMALDIGIT+;

fragment Fractionalconstant:
	Digitsequence? '.' Digitsequence
	| Digitsequence '.';

fragment Exponentpart:
	'e' SIGN? Digitsequence
	| 'E' SIGN? Digitsequence;

fragment SIGN: [+-];

fragment Digitsequence: DIGIT ('\''? DIGIT)*;

fragment Floatingsuffix: [flFL];

fragment Encodingprefix: 'u8' | 'u' | 'U' | 'L';

fragment Schar:
	~ ["\\\r\n]
	| Escapesequence
	| Universalcharactername;
fragment Rawstring: 'R"' (( '\\' ["()] )|~[\r\n (])*? '(' ~[)]*? ')'  (( '\\' ["()]) | ~[\r\n "])*? '"';
UserDefinedIntegerLiteral:
	DecimalLiteral Udsuffix
	| OctalLiteral Udsuffix
	| HexadecimalLiteral Udsuffix
	| BinaryLiteral Udsuffix;
UserDefinedFloatingLiteral:
	Fractionalconstant Exponentpart? Udsuffix
	| Digitsequence Exponentpart Udsuffix;
UserDefinedStringLiteral: LiterałŁańcuchowy Udsuffix;
UserDefinedCharacterLiteral: LiterałSymbolu Udsuffix;
fragment Udsuffix: Identifier;
Whitespace: [ \t]+ -> skip;
Newline: ('\r' '\n'? | '\n') -> skip;
BlockComment: '/*' .*? '*/' -> skip;
LineComment: '//' ~ [\r\n]* -> skip;
