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
	Identifier
	| operatorFunctionId
	| conversionFunctionId
	| literalOperatorId
	| Tylda (className | decltypeSpecifier)
	| templateId;

wykwalifikowane: zagnieżdżonySpecyfikatorImienia Szablon? niewykwalifikowaneId;

zagnieżdżonySpecyfikatorImienia:
	(theTypeName | namespaceName | decltypeSpecifier)? Dwudwukropek
	| zagnieżdżonySpecyfikatorImienia (
		Identifier
		| Szablon? simpleTemplateId
	) Dwudwukropek;

wyrażenieLambda:
	wyprowadzaczLambda deklaracjaLambda? compoundStatement;

wyprowadzaczLambda: LewyNawiasKwadratowy zdobyczLambda? PrawyNawiasKwadratowy;

zdobyczLambda:
	listaPrzechwytywania
	| zdobyczDomyślna (Przecinek listaPrzechwytywania)?;

zdobyczDomyślna: Oraz | Przypisanie;

listaPrzechwytywania: zdobycz (Przecinek zdobycz)* Elipsa?;

zdobycz: prostaZdobycz | inicjowaniePrzechwytywania;

prostaZdobycz: Oraz? Identifier | To;

inicjowaniePrzechwytywania: Oraz? Identifier initializer;

deklaracjaLambda:
	LewaParenteza parameterDeclarationClause? PrawaParenteza Zmienny? exceptionSpecification?
		attributeSpecifierSeq? trailingReturnType?;

przyrostkoweWyrażenie:
	pierwotneWyrazenie
	| przyrostkoweWyrażenie LewyNawiasKwadratowy (wyrażenie | bracedInitList) PrawyNawiasKwadratowy
	| przyrostkoweWyrażenie LewaParenteza listaWyrażeń? PrawaParenteza
	| (simpleTypeSpecifier | typeNameSpecifier) (
		LewaParenteza listaWyrażeń? PrawaParenteza
		| bracedInitList
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
	| zagnieżdżonySpecyfikatorImienia Szablon simpleTemplateId Dwudwukropek Tylda theTypeName
	| Tylda decltypeSpecifier;

jednoargumentoweWyrażenie:
	przyrostkoweWyrażenie
	| (Inkrementacja | Dekrementacja | operatorJednoargumentowca | Rozmiaru) jednoargumentoweWyrażenie
	| Rozmiaru (
		LewaParenteza theTypeId PrawaParenteza
		| Elipsa LewaParenteza Identifier PrawaParenteza
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

nowyTypId: typeSpecifierSeq nowyDeklarator?;

nowyDeklarator:
	pointerOperator nowyDeklarator?
	| nowyDeklaratorBezWskaźnika;

nowyDeklaratorBezWskaźnika:
	LewyNawiasKwadratowy wyrażenie PrawyNawiasKwadratowy attributeSpecifierSeq?
	| nowyDeklaratorBezWskaźnika LewyNawiasKwadratowy wyrażenieStałe PrawyNawiasKwadratowy attributeSpecifierSeq?;

nowyInicjator:
	LewaParenteza listaWyrażeń? PrawaParenteza
	| bracedInitList;

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
		(MniejNiż | WięcejNiż | LessEqual | GreaterEqual) wyrażenieZmiany
	)*;

wyrażenieRówności:
	względneWyrażenie (
		(Równanie | NotEqual) względneWyrażenie
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
	| logiczneWyrażenieLub operatorPrzypisania initializerClause
	| throwExpression;

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
	labeledStatement
	| declarationStatement
	| attributeSpecifierSeq? (
		expressionStatement
		| compoundStatement
		| selectionStatement
		| iterationStatement
		| jumpStatement
		| tryBlock
	);

labeledStatement:
	attributeSpecifierSeq? (
		Identifier
		| Przypadek wyrażenieStałe
		| Domyślny
	) Dwukropek deklaracja;

expressionStatement: wyrażenie? Średnik;

compoundStatement: LewaKlamra statementSeq? PrawaKlamra;

statementSeq: deklaracja+;

selectionStatement:
	W_przypadku_gdy LewaParenteza condition PrawaParenteza deklaracja (Jeśli_nie deklaracja)?
	| Przełącz LewaParenteza condition PrawaParenteza deklaracja;

condition:
	wyrażenie
	| attributeSpecifierSeq? declSpecifierSeq declarator (
		Przypisanie initializerClause
		| bracedInitList
	);

iterationStatement:
	Dopóty LewaParenteza condition PrawaParenteza deklaracja
	| Rób deklaracja Dopóty LewaParenteza wyrażenie PrawaParenteza Średnik
	| Dla LewaParenteza (
		forInitStatement condition? Średnik wyrażenie?
		| forRangeDeclaration Dwukropek forRangeInitializer
	) PrawaParenteza deklaracja;

forInitStatement: expressionStatement | simpleDeclaration;

forRangeDeclaration:
	attributeSpecifierSeq? declSpecifierSeq declarator;

forRangeInitializer: wyrażenie | bracedInitList;

jumpStatement:
	(
		Rozłam
		| Kontynuuj
		| Zwróć (wyrażenie | bracedInitList)?
		| IdźDo Identifier
	) Średnik;

declarationStatement: blockDeclaration;
/*Declarations*/

declarationseq: declaration+;

declaration:
	blockDeclaration
	| functionDefinition
	| templateDeclaration
	| explicitInstantiation
	| explicitSpecialization
	| linkageSpecification
	| namespaceDefinition
	| emptyDeclaration
	| attributeDeclaration;

blockDeclaration:
	simpleDeclaration
	| asmDefinition
	| namespaceAliasDefinition
	| staticAssertDeclaration
	| useDeclaration
	| używającDirective
	| aliasDeclaration
	| opaqueEnumDeclaration;
aliasDeclaration:
	Używając Identifier attributeSpecifierSeq? Przypisanie theTypeId Średnik;

simpleDeclaration:
	declSpecifierSeq? initDeclaratorList? Średnik
	| attributeSpecifierSeq declSpecifierSeq? initDeclaratorList Średnik;

staticAssertDeclaration:
	Statyczne_zapewnienie LewaParenteza wyrażenieStałe Przecinek LiterałŁańcuchowy PrawaParenteza Średnik;

emptyDeclaration: Średnik;

attributeDeclaration: attributeSpecifierSeq Średnik;

declSpecifier:
	storageKlasaSpecifier
	| typeSpecifier
	| functionSpecifier
	| Przyjaciel
	| DefiniowanieTypu
	| Constexpr;
	
declSpecifierSeq: declSpecifier+? attributeSpecifierSeq?;

storageKlasaSpecifier:
	DoWykazu
	| Static
	| WątekLokalny
	| Zewnętrzny
	| Zmienny;

functionSpecifier: WLinii | Wirtualna | Sprecyzowany;

typedefName: Identifier;

typeSpecifier:
	trailingTypeSpecifier
	| classSpecifier
	| enumSpecifier;

trailingTypeSpecifier:
	simpleTypeSpecifier
	| elaboratedTypeSpecifier
	| typeNameSpecifier
	| cvQualifier;

typeSpecifierSeq: typeSpecifier+ attributeSpecifierSeq?;

trailingTypeSpecifierSeq:
	trailingTypeSpecifier+ attributeSpecifierSeq?;

simpleTypeLengthModifier:
	Krótka
	| Długa;
	
simpleTypeSignednessModifier:
	Nieprzypisana
	| Przypisana;

simpleTypeSpecifier:
	zagnieżdżonySpecyfikatorImienia? theTypeName
	| zagnieżdżonySpecyfikatorImienia Szablon simpleTemplateId
	| simpleTypeSignednessModifier
	| simpleTypeSignednessModifier? simpleTypeLengthModifier+
	| simpleTypeSignednessModifier? Znak
	| simpleTypeSignednessModifier? Znak16_t
	| simpleTypeSignednessModifier? Znak32_t
	| simpleTypeSignednessModifier? Wchar
	| Bool
	| simpleTypeSignednessModifier? simpleTypeLengthModifier* Całk
	| Zmiennoprzecinkowy
	| simpleTypeLengthModifier? Podwójny
	| Otchłań
	| Auto
	| decltypeSpecifier;

theTypeName:
	className
	| enumName
	| typedefName
	| simpleTemplateId;

decltypeSpecifier:
	Dekltyp LewaParenteza (wyrażenie | Auto) PrawaParenteza;

elaboratedTypeSpecifier:
	classKey (
		attributeSpecifierSeq? zagnieżdżonySpecyfikatorImienia? Identifier
		| simpleTemplateId
		| zagnieżdżonySpecyfikatorImienia Szablon? simpleTemplateId
	)
	| Wyliczenie zagnieżdżonySpecyfikatorImienia? Identifier;

enumName: Identifier;

enumSpecifier:
	enumHead LewaKlamra (enumeratorList Przecinek?)? PrawaKlamra;

enumHead:
	enumkey attributeSpecifierSeq? (
		zagnieżdżonySpecyfikatorImienia? Identifier
	)? enumbase?;

opaqueEnumDeclaration:
	enumkey attributeSpecifierSeq? Identifier enumbase? Średnik;

enumkey: Wyliczenie (Klasa | Struktura)?;

enumbase: Dwukropek typeSpecifierSeq;

enumeratorList:
	enumeratorDefinition (Przecinek enumeratorDefinition)*;

enumeratorDefinition: enumerator (Przypisanie wyrażenieStałe)?;

enumerator: Identifier;

namespaceName: originalNamespaceName | namespaceAlias;

originalNamespaceName: Identifier;

namespaceDefinition:
	WLinii? Przestrzeńnazw (Identifier | originalNamespaceName)? LewaKlamra namespaceBody = declarationseq
		? PrawaKlamra;

namespaceAlias: Identifier;

namespaceAliasDefinition:
	Przestrzeńnazw Identifier Przypisanie qualifiednamespacespecifier Średnik;

qualifiednamespacespecifier: zagnieżdżonySpecyfikatorImienia? namespaceName;

useDeclaration:
	Używając ((WytypujNazwę? zagnieżdżonySpecyfikatorImienia) | Dwudwukropek) niewykwalifikowaneId Średnik;

używającDirective:
	attributeSpecifierSeq? Używając Przestrzeńnazw zagnieżdżonySpecyfikatorImienia? namespaceName Średnik;

asmDefinition: Asm LewaParenteza LiterałŁańcuchowy PrawaParenteza Średnik;

linkageSpecification:
	Zewnętrzny LiterałŁańcuchowy (
		LewaKlamra declarationseq? PrawaKlamra
		| declaration
	);

attributeSpecifierSeq: attributeSpecifier+;

attributeSpecifier:
	LewyNawiasKwadratowy LewyNawiasKwadratowy attributeList? PrawyNawiasKwadratowy PrawyNawiasKwadratowy
	| alignmentspecifier;

alignmentspecifier:
	Alignas LewaParenteza (theTypeId | wyrażenieStałe) Elipsa? PrawaParenteza;

attributeList: attribute (Przecinek attribute)* Elipsa?;

attribute: (attributeNamespace Dwudwukropek)? Identifier attributeArgumentClause?;

attributeNamespace: Identifier;

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
	declaratorid attributeSpecifierSeq?
	| noPointerDeclarator (
		parametersAndQualifiers
		| LewyNawiasKwadratowy wyrażenieStałe? PrawyNawiasKwadratowy attributeSpecifierSeq?
	)
	| LewaParenteza pointerDeclarator PrawaParenteza;

parametersAndQualifiers:
	LewaParenteza parameterDeclarationClause? PrawaParenteza cvqualifierseq? refqualifier?
		exceptionSpecification? attributeSpecifierSeq?;

trailingReturnType:
	Strzałka trailingTypeSpecifierSeq abstractDeclarator?;

pointerOperator:
	(Oraz | Oraz) attributeSpecifierSeq?
	| zagnieżdżonySpecyfikatorImienia? Mnożenie attributeSpecifierSeq? cvqualifierseq?;

cvqualifierseq: cvQualifier+;

cvQualifier: Stała | Zwiewna;

refqualifier: Oraz | Oraz;

declaratorid: Elipsa? wyrażenieId;

theTypeId: typeSpecifierSeq abstractDeclarator?;

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
			attributeSpecifierSeq?
	)
	| parametersAndQualifiers
	| LewyNawiasKwadratowy wyrażenieStałe? PrawyNawiasKwadratowy attributeSpecifierSeq?
	| LewaParenteza pointerAbstractDeclarator PrawaParenteza;

abstractPackDeclarator:
	pointerOperator* noPointerAbstractPackDeclarator;

noPointerAbstractPackDeclarator:
	noPointerAbstractPackDeclarator (
		parametersAndQualifiers
		| LewyNawiasKwadratowy wyrażenieStałe? PrawyNawiasKwadratowy attributeSpecifierSeq?
	)
	| Elipsa;

parameterDeclarationClause:
	parameterDeclarationList (Przecinek? Elipsa)?;

parameterDeclarationList:
	parameterDeclaration (Przecinek parameterDeclaration)*;

parameterDeclaration:
	attributeSpecifierSeq? declSpecifierSeq (
		(declarator | abstractDeclarator?) (
			Przypisanie initializerClause
		)?
	);

functionDefinition:
	attributeSpecifierSeq? declSpecifierSeq? declarator virtualSpecifierSeq? functionBody;

functionBody:
	conStrukturaorInitializer? compoundStatement
	| functionTryBlock
	| Przypisanie (Domyślny | Usuń) Średnik;

initializer:
	braceOrEqualInitializer
	| LewaParenteza listaWyrażeń PrawaParenteza;

braceOrEqualInitializer:
	Przypisanie initializerClause
	| bracedInitList;

initializerClause: wyrażeniePrzypisania | bracedInitList;

initializerList:
	initializerClause Elipsa? (
		Przecinek initializerClause Elipsa?
	)*;

bracedInitList: LewaKlamra (initializerList Przecinek?)? PrawaKlamra;
/*Klasaes*/

className: Identifier | simpleTemplateId;

classSpecifier:
	classHead LewaKlamra memberSpecification? PrawaKlamra;

classHead:
	classKey attributeSpecifierSeq? (
		classHeadName classVirtSpecifier?
	)? baseClause?
	| Jedność attributeSpecifierSeq? (
		classHeadName classVirtSpecifier?
	)?;

classHeadName: zagnieżdżonySpecyfikatorImienia? className;

classVirtSpecifier: Ostateczny;

classKey: Klasa | Struktura;

memberSpecification:
	(memberdeclaration | accessSpecifier Dwukropek)+;

memberdeclaration:
	attributeSpecifierSeq? declSpecifierSeq? memberDeclaratorList? Średnik
	| functionDefinition
	| staticAssertDeclaration
	| templateDeclaration
	| aliasDeclaration
	| emptyDeclaration;
//	| UseDeclaration
memberDeclaratorList:
	memberDeclarator (Przecinek memberDeclarator)*;

memberDeclarator:
	declarator (
		virtualSpecifierSeq? pureSpecifier?
		| braceOrEqualInitializer?
	)
	| Identifier? attributeSpecifierSeq? Dwukropek wyrażenieStałe;

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
	attributeSpecifierSeq? (
		baseTypeSpecifier
		| Wirtualna accessSpecifier? baseTypeSpecifier
		| accessSpecifier Wirtualna? baseTypeSpecifier
	);

classOrDeclType:
	zagnieżdżonySpecyfikatorImienia? className
	| decltypeSpecifier;

baseTypeSpecifier: classOrDeclType;

accessSpecifier: Prywatna | Chroniona | Publiczna;
/*Special member functions*/

conversionFunctionId: Operator conversionTypeId;

conversionTypeId: typeSpecifierSeq conversionDeclarator?;

conversionDeclarator: pointerOperator conversionDeclarator?;

conStrukturaorInitializer: Dwukropek memInitializerList;

memInitializerList:
	memInitializer Elipsa? (Przecinek memInitializer Elipsa?)*;

memInitializer:
	meminitializerid (
		LewaParenteza listaWyrażeń? PrawaParenteza
		| bracedInitList
	);

meminitializerid: classOrDeclType | Identifier;
/*Overloading*/

operatorFunctionId: Operator theOperator;

literalOperatorId:
	Operator (
		LiterałŁańcuchowy Identifier
		| UserDefinedStringLiteral
	);
/*Templates*/

templateDeclaration:
	Szablon MniejNiż templateparameterList WięcejNiż declaration;

templateparameterList:
	templateParameter (Przecinek templateParameter)*;

templateParameter: typeParameter | parameterDeclaration;

typeParameter:
	(
		(Szablon MniejNiż templateparameterList WięcejNiż)? Klasa
		| WytypujNazwę
	) ((Elipsa? Identifier?) | (Identifier? Przypisanie theTypeId));

simpleTemplateId:
	templateName MniejNiż templateArgumentList? WięcejNiż;

templateId:
	simpleTemplateId
	| (operatorFunctionId | literalOperatorId) MniejNiż templateArgumentList? WięcejNiż;

templateName: Identifier;

templateArgumentList:
	templateArgument Elipsa? (Przecinek templateArgument Elipsa?)*;

templateArgument: theTypeId | wyrażenieStałe | wyrażenieId;

typeNameSpecifier:
	WytypujNazwę zagnieżdżonySpecyfikatorImienia (
		Identifier
		| Szablon? simpleTemplateId
	);

explicitInstantiation: Zewnętrzny? Szablon declaration;

explicitSpecialization: Szablon MniejNiż WięcejNiż declaration;
/*Exception handling*/

tryBlock: Spróbuj compoundStatement handlerSeq;

functionTryBlock:
	Spróbuj conStrukturaorInitializer? compoundStatement handlerSeq;

handlerSeq: handler+;

handler:
	Złap LewaParenteza exceptionDeclaration PrawaParenteza compoundStatement;

exceptionDeclaration:
	attributeSpecifierSeq? typeSpecifierSeq (
		declarator
		| abstractDeclarator
	)?
	| Elipsa;

throwExpression: Wyrzuć wyrażeniePrzypisania?;

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
	| GreaterEqual
	| DodaniePrzypisanie
	| OdjęciePrzypisanie
	| PomnożeniePrzypisanie
	| ModułPrzypisanie
	| MniejNiż MniejNiż
	| WięcejNiż WięcejNiż
	| Równanie
	| NotEqual
	| LessEqual
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