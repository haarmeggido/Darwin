parser grammar Parser;
options {
	tokenVocab = Lexer;
}
/*Basic concepts*/

jednostkaTłumacząca: declarationseq? EOF;
/*Expressions*/

pierwotneWyrazenie:
	literał+
	| To
	| LewaParenteza wyrażenie PrawaParenteza
	| wyrażenieId
	| wyrażenieLambda;

wyrażenieId: niewykwalifikowaneId | wykwalifikowane;

niewykwalifikowaneId:
	Identyfikator
	| operatorFunctionId
	| conversionFunctionId
	| literalOperatorId
	| Tylda (klasaNazwa | dekltypSpecyfikator)
	| szablonId;

wykwalifikowane: zagnieżdżonySpecyfikatorImienia Szablon? niewykwalifikowaneId;

zagnieżdżonySpecyfikatorImienia:
	(theTypeName | namespaceName | dekltypSpecyfikator)? Dwudwukropek
	| zagnieżdżonySpecyfikatorImienia (
		Identyfikator
		| Szablon? prostySzablonId
	) Dwudwukropek;

wyrażenieLambda:
	wyprowadzaczLambda deklaracjaLambda? wyrażenieZłożone;

wyprowadzaczLambda: LewyNawiasKwadratowy zdobyczLambda? PrawyNawiasKwadratowy;

zdobyczLambda:
	listaPrzechwytywania
	| zdobyczDomyślna (Przecinek listaPrzechwytywania)?;

zdobyczDomyślna: Oraz | Przypisanie;

listaPrzechwytywania: zdobycz (Przecinek zdobycz)* Elipsa?;

zdobycz: prostaZdobycz | inicjowaniePrzechwytywania;

prostaZdobycz: Oraz? Identyfikator | To;

inicjowaniePrzechwytywania: Oraz? Identyfikator initializer;

deklaracjaLambda:
	LewaParenteza parameterDeclarationClause? PrawaParenteza Zmienny? exceptionSpecification?
		atrybutSpecyfikatorSekw? trailingReturnType?;

przyrostkoweWyrażenie:
	pierwotneWyrazenie
	| przyrostkoweWyrażenie LewyNawiasKwadratowy (wyrażenie | klamraListaInicj) PrawyNawiasKwadratowy
	| przyrostkoweWyrażenie LewaParenteza listaWyrażeń? PrawaParenteza
	| (simpleTypeSpecifier | typeNameSpecifier) (
		LewaParenteza listaWyrażeń? PrawaParenteza
		| klamraListaInicj
	)
	| przyrostkoweWyrażenie (Kropka | Strzałka) (
		Szablon? wyrażenieId
		| nazwaPseudoDestruktora
	)
	| przyrostkoweWyrażenie (Inkrementacja | Dekrementacja)
	| (
		DynamicznyRzut
		| StatycznyRzut
		| ZreinterpretujRzut
		| StałyRzut
	) MniejNiż theTypeId WięcejNiż LewaParenteza wyrażenie PrawaParenteza
	| typIdTypuId LewaParenteza (wyrażenie | theTypeId) PrawaParenteza;
/*
 add a middle layer to eliminate duplicated function declarations
 */

typIdTypuId: WytypujId;

listaWyrażeń: initializerList;

nazwaPseudoDestruktora:
	zagnieżdżonySpecyfikatorImienia? (theTypeName Dwudwukropek)? Tylda theTypeName
	| zagnieżdżonySpecyfikatorImienia Szablon prostySzablonId Dwudwukropek Tylda theTypeName
	| Tylda dekltypSpecyfikator;

jednoargumentoweWyrażenie:
	przyrostkoweWyrażenie
	| (Inkrementacja | Dekrementacja | operatorJednoargumentowca | Rozmiaru) jednoargumentoweWyrażenie
	| Rozmiaru (
		LewaParenteza theTypeId PrawaParenteza
		| Elipsa LewaParenteza Identyfikator PrawaParenteza
	)
	| Alignof LewaParenteza theTypeId PrawaParenteza
	| wyrażenieBezWyjątków
	| noweWyrażenie
	| usuńWyrażenie;

operatorJednoargumentowca: Lub | Mnożenie | Oraz | Plus | Tylda | Minus | Nie;

noweWyrażenie:
	Dwudwukropek? Nowy noweMiejsceDocelowe? (
		nowyTypId
		| (LewaParenteza theTypeId PrawaParenteza)
	) nowyInicjator?;

noweMiejsceDocelowe: LewaParenteza listaWyrażeń PrawaParenteza;

nowyTypId: typSpecyfikatorSekw nowyDeklarator?;

nowyDeklarator:
	pointerOperator nowyDeklarator?
	| nowyDeklaratorBezWskaźnika;

nowyDeklaratorBezWskaźnika:
	LewyNawiasKwadratowy wyrażenie PrawyNawiasKwadratowy atrybutSpecyfikatorSekw?
	| nowyDeklaratorBezWskaźnika LewyNawiasKwadratowy wyrażenieStałe PrawyNawiasKwadratowy atrybutSpecyfikatorSekw?;

nowyInicjator:
	LewaParenteza listaWyrażeń? PrawaParenteza
	| klamraListaInicj;

usuńWyrażenie:
	Dwudwukropek? Usuń (LewyNawiasKwadratowy PrawyNawiasKwadratowy)? wyrażenieRzutujące;

wyrażenieBezWyjątków: Bezwyjątków LewaParenteza wyrażenie PrawaParenteza;

wyrażenieRzutujące:
	jednoargumentoweWyrażenie
	| LewaParenteza theTypeId PrawaParenteza wyrażenieRzutujące;

wyrażenieWskaźnikaCzłonkowego:
	wyrażenieRzutujące ((KropkaGwiazdka | StrzałkaGwiazdka) wyrażenieRzutujące)*;

wyrażenieMultiplikatywne:
	wyrażenieWskaźnikaCzłonkowego (
		(Mnożenie | Dzielenie | Mod) wyrażenieWskaźnikaCzłonkowego
	)*;

wyrażenieAddytywne:
	wyrażenieMultiplikatywne (
		(Plus | Minus) wyrażenieMultiplikatywne
	)*;

wyrażenieZmiany:
	wyrażenieAddytywne (operatorZmiany wyrażenieAddytywne)*;

operatorZmiany: WięcejNiż WięcejNiż | MniejNiż MniejNiż;

względneWyrażenie:
	wyrażenieZmiany (
		(MniejNiż | WięcejNiż | MniejRówneNiż | WięcejRówneNiż) wyrażenieZmiany
	)*;

wyrażenieRówności:
	względneWyrażenie (
		(Równanie | NieRówne) względneWyrażenie
	)*;

wyrażenieOraz: wyrażenieRówności (Oraz wyrażenieRówności)*;

wyrażenieEksluzywneLub: wyrażenieOraz (Kareta wyrażenieOraz)*;

wyrażenieInkluzywneLub:
	wyrażenieEksluzywneLub (Lub wyrażenieEksluzywneLub)*;

logiczneWyrażenieOraz:
	wyrażenieInkluzywneLub (Oraz wyrażenieInkluzywneLub)*;

logiczneWyrażenieLub:
	logiczneWyrażenieOraz (Lub logiczneWyrażenieOraz)*;

wyrażenieWarunkowe:
	logiczneWyrażenieLub (
		Pytajnik wyrażenie Dwukropek wyrażeniePrzypisania
	)?;

wyrażeniePrzypisania:
	wyrażenieWarunkowe
	| logiczneWyrażenieLub operatorPrzypisania inicjującaKlauzula
	| rzućWyrażenie;

operatorPrzypisania:
	Przypisanie
	| PomnożeniePrzypisanie
	| PodzieleniePrzypisanie
	| ModułPrzypisanie
	| DodaniePrzypisanie
	| OdjęciePrzypisanie;
/*  | RightShiftAssign
	| LeftShiftAssign
	| AndAssign
	| XorAssign
	| OrAssign;*/

wyrażenie: wyrażeniePrzypisania (Przecinek wyrażeniePrzypisania)*;

wyrażenieStałe: wyrażenieWarunkowe;
/*Statements*/

deklaracja:
	wyrażenieOznakowane
	| wyrażenieDeklaracji
	| atrybutSpecyfikatorSekw? (
		wyrażenieFormuły
		| wyrażenieZłożone
		| wyrażenieWyboru
		| wyrażenieIteracji
		| wyrażenieSkoku
		| spróbujBlok
	);

wyrażenieOznakowane:
	atrybutSpecyfikatorSekw? (
		Identyfikator
		| Przypadek wyrażenieStałe
		| Domyślny
	) Dwukropek deklaracja;

wyrażenieFormuły: wyrażenie? Średnik;

wyrażenieZłożone: LewaKlamra deklaracjaSekw? PrawaKlamra;

deklaracjaSekw: deklaracja+;

wyrażenieWyboru:
	W_przypadku_gdy LewaParenteza warunek PrawaParenteza deklaracja (Jeśli_nie deklaracja)?
	| Przełącz LewaParenteza warunek PrawaParenteza deklaracja;

warunek:
	wyrażenie
	| atrybutSpecyfikatorSekw? declSpecifierSeq declarator (
		Przypisanie inicjującaKlauzula
		| klamraListaInicj
	);

wyrażenieIteracji:
	Dopóty LewaParenteza warunek PrawaParenteza deklaracja
	| Rób deklaracja Dopóty LewaParenteza wyrażenie PrawaParenteza Średnik
	| Dla LewaParenteza (
		forInitStatement warunek? Średnik wyrażenie?
		| forRangeDeclaration Dwukropek inicjalizerDlaZasięg
	) PrawaParenteza deklaracja;

forInitStatement: wyrażenieFormuły | prostaDeklaracja;

forRangeDeclaration:
	atrybutSpecyfikatorSekw? declSpecifierSeq declarator;

inicjalizerDlaZasięg: wyrażenie | klamraListaInicj;

wyrażenieSkoku:
	(
		Rozłam
		| Kontynuuj
		| Zwróć (wyrażenie | klamraListaInicj)?
		| IdźDo Identyfikator
	) Średnik;

wyrażenieDeklaracji: blokDeklaracja;
/*Declarations*/

declarationseq: declaration+;

declaration:
	blokDeklaracja
	| funkcjaDefinicja
	| szablonDeklaracja
	| jawnaInstantacja
	| jawnaSpecjalizacja
	| łączonaSpecyfikacja
	| przestrzeńnazwDefinicja
	| pustaDeklaracja
	| atrybutDeklaracja;

blokDeklaracja:
	prostaDeklaracja
	| asmDefinition
	| przestrzeńnazwAliasDefinicja
	| staticAssertDeclaration
	| useDeclaration
	| używającDirective
	| aliasDeclaration
	| opaqueEnumDeclaration;
aliasDeclaration:
	Używając Identyfikator atrybutSpecyfikatorSekw? Przypisanie theTypeId Średnik;

prostaDeklaracja:
	declSpecifierSeq? initDeclaratorList? Średnik
	| atrybutSpecyfikatorSekw declSpecifierSeq? initDeclaratorList Średnik;

staticAssertDeclaration:
	Statyczne_zapewnienie LewaParenteza wyrażenieStałe Przecinek LiterałŁańcuchowy PrawaParenteza Średnik;

pustaDeklaracja: Średnik;

atrybutDeklaracja: atrybutSpecyfikatorSekw Średnik;

declSpecifier:
	storageKlasaSpecifier
	| typeSpecifier
	| functionSpecifier
	| Przyjaciel
	| DefiniowanieTypu
	| Constexpr;
	
declSpecifierSeq: declSpecifier+? atrybutSpecyfikatorSekw?;

storageKlasaSpecifier:
	DoWykazu
	| Static
	| WątekLokalny
	| Zewnętrzny
	| Zmienny;

functionSpecifier: WLinii | Wirtualna | Sprecyzowany;

typedefName: Identyfikator;

typeSpecifier:
	trailingTypeSpecifier
	| classSpecifier
	| enumSpecifier;

trailingTypeSpecifier:
	simpleTypeSpecifier
	| elaboratedTypeSpecifier
	| typeNameSpecifier
	| cvQualifier;

typSpecyfikatorSekw: typeSpecifier+ atrybutSpecyfikatorSekw?;

końcowyTypSpecyfikatorSekw:
	trailingTypeSpecifier+ atrybutSpecyfikatorSekw?;

prostyTypDługośćModyfikator:
	Krótka
	| Długa;
	
prostyTypPrzypisanieModyfikator:
	Nieprzypisana
	| Przypisana;

simpleTypeSpecifier:
	zagnieżdżonySpecyfikatorImienia? theTypeName
	| zagnieżdżonySpecyfikatorImienia Szablon prostySzablonId
	| prostyTypPrzypisanieModyfikator
	| prostyTypPrzypisanieModyfikator? prostyTypDługośćModyfikator+
	| prostyTypPrzypisanieModyfikator? Znak
	| prostyTypPrzypisanieModyfikator? Znak16_t
	| prostyTypPrzypisanieModyfikator? Znak32_t
	| prostyTypPrzypisanieModyfikator? Wchar
	| Bool
	| prostyTypPrzypisanieModyfikator? prostyTypDługośćModyfikator* Całk
	| Zmiennoprzecinkowy
	| prostyTypDługośćModyfikator? Podwójny
	| Otchłań
	| Auto
	| dekltypSpecyfikator;

theTypeName:
	klasaNazwa
	| enumName
	| typedefName
	| prostySzablonId;

dekltypSpecyfikator:
	Dekltyp LewaParenteza (wyrażenie | Auto) PrawaParenteza;

elaboratedTypeSpecifier:
	classKey (
		atrybutSpecyfikatorSekw? zagnieżdżonySpecyfikatorImienia? Identyfikator
		| prostySzablonId
		| zagnieżdżonySpecyfikatorImienia Szablon? prostySzablonId
	)
	| Wyliczenie zagnieżdżonySpecyfikatorImienia? Identyfikator;

enumName: Identyfikator;

enumSpecifier:
	enumHead LewaKlamra (enumeratorList Przecinek?)? PrawaKlamra;

enumHead:
	enumkey atrybutSpecyfikatorSekw? (
		zagnieżdżonySpecyfikatorImienia? Identyfikator
	)? enumbase?;

opaqueEnumDeclaration:
	enumkey atrybutSpecyfikatorSekw? Identyfikator enumbase? Średnik;

enumkey: Wyliczenie (Klasa | Struktura)?;

enumbase: Dwukropek typSpecyfikatorSekw;

enumeratorList:
	enumeratorDefinition (Przecinek enumeratorDefinition)*;

enumeratorDefinition: enumerator (Przypisanie wyrażenieStałe)?;

enumerator: Identyfikator;

namespaceName: originalNamespaceName | namespaceAlias;

originalNamespaceName: Identyfikator;

przestrzeńnazwDefinicja:
	WLinii? Przestrzeńnazw (Identyfikator | originalNamespaceName)? LewaKlamra namespaceBody = declarationseq
		? PrawaKlamra;

namespaceAlias: Identyfikator;

przestrzeńnazwAliasDefinicja:
	Przestrzeńnazw Identyfikator Przypisanie qualifiednamespacespecifier Średnik;

qualifiednamespacespecifier: zagnieżdżonySpecyfikatorImienia? namespaceName;

useDeclaration:
	Używając ((WytypujNazwę? zagnieżdżonySpecyfikatorImienia) | Dwudwukropek) niewykwalifikowaneId Średnik;

używającDirective:
	atrybutSpecyfikatorSekw? Używając Przestrzeńnazw zagnieżdżonySpecyfikatorImienia? namespaceName Średnik;

asmDefinition: Asm LewaParenteza LiterałŁańcuchowy PrawaParenteza Średnik;

łączonaSpecyfikacja:
	Zewnętrzny LiterałŁańcuchowy (
		LewaKlamra declarationseq? PrawaKlamra
		| declaration
	);

atrybutSpecyfikatorSekw: attributeSpecifier+;

attributeSpecifier:
	LewyNawiasKwadratowy LewyNawiasKwadratowy attributeList? PrawyNawiasKwadratowy PrawyNawiasKwadratowy
	| alignmentspecifier;

alignmentspecifier:
	Alignas LewaParenteza (theTypeId | wyrażenieStałe) Elipsa? PrawaParenteza;

attributeList: attribute (Przecinek attribute)* Elipsa?;

attribute: (attributeNamespace Dwudwukropek)? Identyfikator attributeArgumentClause?;

attributeNamespace: Identyfikator;

attributeArgumentClause: LewaParenteza balancedTokenSeq? PrawaParenteza;

balancedTokenSeq: balancedtoken+;

balancedtoken:
	LewaParenteza balancedTokenSeq PrawaParenteza
	| LewyNawiasKwadratowy balancedTokenSeq PrawyNawiasKwadratowy
	| LewaKlamra balancedTokenSeq PrawaKlamra
	| ~(
		LewaParenteza
		| PrawaParenteza
		| LewaKlamra
		| PrawaKlamra
		| LewyNawiasKwadratowy
		| PrawyNawiasKwadratowy
	)+;
/*Declarators*/

initDeclaratorList: initDeclarator (Przecinek initDeclarator)*;

initDeclarator: declarator initializer?;

declarator:
	pointerDeclarator
	| noPointerDeclarator parametersAndQualifiers trailingReturnType;

pointerDeclarator: (pointerOperator Stała?)* noPointerDeclarator;

noPointerDeclarator:
	declaratorid atrybutSpecyfikatorSekw?
	| noPointerDeclarator (
		parametersAndQualifiers
		| LewyNawiasKwadratowy wyrażenieStałe? PrawyNawiasKwadratowy atrybutSpecyfikatorSekw?
	)
	| LewaParenteza pointerDeclarator PrawaParenteza;

parametersAndQualifiers:
	LewaParenteza parameterDeclarationClause? PrawaParenteza cvqualifierseq? refqualifier?
		exceptionSpecification? atrybutSpecyfikatorSekw?;

trailingReturnType:
	Strzałka końcowyTypSpecyfikatorSekw abstractDeclarator?;

pointerOperator:
	(Oraz | Oraz) atrybutSpecyfikatorSekw?
	| zagnieżdżonySpecyfikatorImienia? Mnożenie atrybutSpecyfikatorSekw? cvqualifierseq?;

cvqualifierseq: cvQualifier+;

cvQualifier: Stała | Zwiewna;

refqualifier: Oraz | Oraz;

declaratorid: Elipsa? wyrażenieId;

theTypeId: typSpecyfikatorSekw abstractDeclarator?;

abstractDeclarator:
	pointerAbstractDeclarator
	| noPointerAbstractDeclarator? parametersAndQualifiers trailingReturnType
	| abstractPackDeclarator;

pointerAbstractDeclarator:
	noPointerAbstractDeclarator
	| pointerOperator+ noPointerAbstractDeclarator?;

noPointerAbstractDeclarator:
	noPointerAbstractDeclarator (
		parametersAndQualifiers
		| noPointerAbstractDeclarator LewyNawiasKwadratowy wyrażenieStałe? PrawyNawiasKwadratowy
			atrybutSpecyfikatorSekw?
	)
	| parametersAndQualifiers
	| LewyNawiasKwadratowy wyrażenieStałe? PrawyNawiasKwadratowy atrybutSpecyfikatorSekw?
	| LewaParenteza pointerAbstractDeclarator PrawaParenteza;

abstractPackDeclarator:
	pointerOperator* noPointerAbstractPackDeclarator;

noPointerAbstractPackDeclarator:
	noPointerAbstractPackDeclarator (
		parametersAndQualifiers
		| LewyNawiasKwadratowy wyrażenieStałe? PrawyNawiasKwadratowy atrybutSpecyfikatorSekw?
	)
	| Elipsa;

parameterDeclarationClause:
	parameterDeclarationList (Przecinek? Elipsa)?;

parameterDeclarationList:
	parameterDeclaration (Przecinek parameterDeclaration)*;

parameterDeclaration:
	atrybutSpecyfikatorSekw? declSpecifierSeq (
		(declarator | abstractDeclarator?) (
			Przypisanie inicjującaKlauzula
		)?
	);

funkcjaDefinicja:
	atrybutSpecyfikatorSekw? declSpecifierSeq? declarator virtualSpecifierSeq? functionBody;

functionBody:
	conStrukturaorInitializer? wyrażenieZłożone
	| functionTryBlock
	| Przypisanie (Domyślny | Usuń) Średnik;

initializer:
	braceOrEqualInitializer
	| LewaParenteza listaWyrażeń PrawaParenteza;

braceOrEqualInitializer:
	Przypisanie inicjującaKlauzula
	| klamraListaInicj;

inicjującaKlauzula: wyrażeniePrzypisania | klamraListaInicj;

initializerList:
	inicjującaKlauzula Elipsa? (
		Przecinek inicjującaKlauzula Elipsa?
	)*;

klamraListaInicj: LewaKlamra (initializerList Przecinek?)? PrawaKlamra;
/*Klasaes*/

klasaNazwa: Identyfikator | prostySzablonId;

classSpecifier:
	classHead LewaKlamra memberSpecification? PrawaKlamra;

classHead:
	classKey atrybutSpecyfikatorSekw? (
		classHeadName classVirtSpecifier?
	)? baseClause?
	| Jedność atrybutSpecyfikatorSekw? (
		classHeadName classVirtSpecifier?
	)?;

classHeadName: zagnieżdżonySpecyfikatorImienia? klasaNazwa;

classVirtSpecifier: Ostateczny;

classKey: Klasa | Struktura;

memberSpecification:
	(memberdeclaration | accessSpecifier Dwukropek)+;

memberdeclaration:
	atrybutSpecyfikatorSekw? declSpecifierSeq? memberDeclaratorList? Średnik
	| funkcjaDefinicja
	| staticAssertDeclaration
	| szablonDeklaracja
	| aliasDeclaration
	| pustaDeklaracja;
//	| UseDeclaration
memberDeclaratorList:
	memberDeclarator (Przecinek memberDeclarator)*;

memberDeclarator:
	declarator (
		virtualSpecifierSeq? pureSpecifier?
		| braceOrEqualInitializer?
	)
	| Identyfikator? atrybutSpecyfikatorSekw? Dwukropek wyrażenieStałe;

virtualSpecifierSeq: virtualSpecifier+;

virtualSpecifier: Nadpisanie | Ostateczny;
/*
 purespecifier: Przypisanie '0'//Conflicts with the lexer ;
 */

pureSpecifier:
	Przypisanie val = OctalLiteral {if($val.text.compareTo("0")!=0) throw new InputMismatchException(this);
		};
/*Derived Classes*/

baseClause: Dwukropek baseSpecifierList;

baseSpecifierList:
	baseSpecifier Elipsa? (Przecinek baseSpecifier Elipsa?)*;

baseSpecifier:
	atrybutSpecyfikatorSekw? (
		baseTypeSpecifier
		| Wirtualna accessSpecifier? baseTypeSpecifier
		| accessSpecifier Wirtualna? baseTypeSpecifier
	);

classOrDeclType:
	zagnieżdżonySpecyfikatorImienia? klasaNazwa
	| dekltypSpecyfikator;

baseTypeSpecifier: classOrDeclType;

accessSpecifier: Prywatna | Chroniona | Publiczna;
/*Special member functions*/

conversionFunctionId: Operator conversionTypeId;

conversionTypeId: typSpecyfikatorSekw conversionDeclarator?;

conversionDeclarator: pointerOperator conversionDeclarator?;

conStrukturaorInitializer: Dwukropek memInitializerList;

memInitializerList:
	memInitializer Elipsa? (Przecinek memInitializer Elipsa?)*;

memInitializer:
	meminitializerid (
		LewaParenteza listaWyrażeń? PrawaParenteza
		| klamraListaInicj
	);

meminitializerid: classOrDeclType | Identyfikator;
/*Overloading*/

operatorFunctionId: Operator theOperator;

literalOperatorId:
	Operator (
		LiterałŁańcuchowy Identyfikator
		| UserDefinedStringLiteral
	);
/*Templates*/

szablonDeklaracja:
	Szablon MniejNiż templateparameterList WięcejNiż declaration;

templateparameterList:
	templateParameter (Przecinek templateParameter)*;

templateParameter: typeParameter | parameterDeclaration;

typeParameter:
	(
		(Szablon MniejNiż templateparameterList WięcejNiż)? Klasa
		| WytypujNazwę
	) ((Elipsa? Identyfikator?) | (Identyfikator? Przypisanie theTypeId));

prostySzablonId:
	templateName MniejNiż szablonArgumentLista? WięcejNiż;

szablonId:
	prostySzablonId
	| (operatorFunctionId | literalOperatorId) MniejNiż szablonArgumentLista? WięcejNiż;

templateName: Identyfikator;

szablonArgumentLista:
	szablonArgument Elipsa? (Przecinek szablonArgument Elipsa?)*;

szablonArgument: theTypeId | wyrażenieStałe | wyrażenieId;

typeNameSpecifier:
	WytypujNazwę zagnieżdżonySpecyfikatorImienia (
		Identyfikator
		| Szablon? prostySzablonId
	);

jawnaInstantacja: Zewnętrzny? Szablon declaration;

jawnaSpecjalizacja: Szablon MniejNiż WięcejNiż declaration;
/*Exception handling*/

spróbujBlok: Spróbuj wyrażenieZłożone obsługaSekw;

functionTryBlock:
	Spróbuj conStrukturaorInitializer? wyrażenieZłożone obsługaSekw;

obsługaSekw: obsługa+;

obsługa:
	Złap LewaParenteza wyjątekDeklaracja PrawaParenteza wyrażenieZłożone;

wyjątekDeklaracja:
	atrybutSpecyfikatorSekw? typSpecyfikatorSekw (
		declarator
		| abstractDeclarator
	)?
	| Elipsa;

rzućWyrażenie: Wyrzuć wyrażeniePrzypisania?;

exceptionSpecification:
	dynamicExceptionSpecification
	| noeExceptSpecification;

dynamicExceptionSpecification:
	Wyrzuć LewaParenteza typeIdList? PrawaParenteza;

typeIdList: theTypeId Elipsa? (Przecinek theTypeId Elipsa?)*;

noeExceptSpecification:
	Bezwyjątków LewaParenteza wyrażenieStałe PrawaParenteza
	| Bezwyjątków;
/*Preprocessing directives*/

/*Lexer*/

theOperator:
	Nowy (LewyNawiasKwadratowy PrawyNawiasKwadratowy)?
	| Usuń (LewyNawiasKwadratowy PrawyNawiasKwadratowy)?
	| Plus
	| Minus
	| Mnożenie
	| Dzielenie
	| Mod
	| Oraz
	| Lub
	| Tylda
	| Nie
	| Przypisanie
	| WięcejNiż
	| MniejNiż
	| WięcejRówneNiż
	| DodaniePrzypisanie
	| OdjęciePrzypisanie
	| PomnożeniePrzypisanie
	| ModułPrzypisanie
	| MniejNiż MniejNiż
	| WięcejNiż WięcejNiż
	| Równanie
	| NieRówne
	| MniejRówneNiż
	| Oraz
	| Lub
	| Inkrementacja
	| Dekrementacja
	| Przecinek
	| StrzałkaGwiazdka
	| Strzałka
	| LewaParenteza PrawaParenteza
	| LewyNawiasKwadratowy PrawyNawiasKwadratowy;
	//| Kareta 
literał:
	LiterałCałkowity
	| LiterałSymbolu
	| LiterałZmiennoprzecinkowy
	| LiterałŁańcuchowy
	| LiterałLogiczny
	| LiterałWskaźnikowy
	| LiterałStworzonyPrzezUżytkownika;
