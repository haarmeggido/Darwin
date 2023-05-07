parser grammar Parser2;
options {
	tokenVocab = Lexer;
}

pierwotneWyrazenie:
	literał+
	| To
	| LewaParenteza wyrażeniePrzypisania PrawaParenteza
	| wyrażenieId;

wyrażenieId: niewykwalifikowaneId | wykwalifikowane;

niewykwalifikowaneId:
	Identyfikator | Tylda (Identyfikator | dekltypSpecyfikator);

dekltypSpecyfikator:
	Dekltyp LewaParenteza (wyrażeniePrzypisania | Auto) PrawaParenteza;

wykwalifikowane: zagnieżdżonySpecyfikatorImienia niewykwalifikowaneId;

zagnieżdżonySpecyfikatorImienia:
	(Identyfikator | dekltypSpecyfikator)? Dwudwukropek
	| zagnieżdżonySpecyfikatorImienia Identyfikator Dwudwukropek;

wyrażeniePrzypisania:
	wyrażenieWarunkowe
	|wyrażeniePrzypisania (Przecinek wyrażeniePrzypisania)*
	|rzućWyrażenie;

rzućWyrażenie: Wyrzuć wyrażeniePrzypisania?;

wyrażenieOraz: wyrażenieRówności (Oraz wyrażenieRówności)*;

wyrażenieRówności:
	względneWyrażenie (
		(Równanie | NieRówne) względneWyrażenie
	)*; //Ww==Ww!=Ww==Ww

względneWyrażenie:
	wyrażenieZmiany (
		(MniejNiż | WięcejNiż | MniejRówneNiż | WięcejRówneNiż) wyrażenieZmiany
	)*; //wz<wz>wz<w=z

wyrażenieZmiany:
	wyrażenieAddytywne (operatorZmiany wyrażenieAddytywne)*;

operatorZmiany: WięcejNiż WięcejNiż | MniejNiż MniejNiż;

wyrażenieAddytywne:
	wyrażenieMultiplikatywne (
		(Plus | Minus) wyrażenieMultiplikatywne
	)*;

wyrażenieRzutujące:
	jednoargumentoweWyrażenie
	| LewaParenteza theTypeId PrawaParenteza wyrażenieRzutujące;

jednoargumentoweWyrażenie:
	przyrostkoweWyrażenie
	| (Inkrementacja | Dekrementacja | operatorJednoargumentowca | Rozmiaru) jednoargumentoweWyrażenie
	| Rozmiaru LewaParenteza theTypeId PrawaParenteza
	| Alignof LewaParenteza theTypeId PrawaParenteza
	| wyrażenieBezWyjątków
	| noweWyrażenie
	| usuńWyrażenie;

wyrażenieBezWyjątków: Bezwyjątków LewaParenteza wyrażeniePrzypisania PrawaParenteza;

klamraListaInicj: LewaKlamra (initializerList Przecinek?)? PrawaKlamra;

initializerList:
	inicjującaKlauzula Elipsa? (
		Przecinek inicjującaKlauzula Elipsa?
	)*;

inicjującaKlauzula: wyrażeniePrzypisania | klamraListaInicj;

simpleTypeSpecifier:
	zagnieżdżonySpecyfikatorImienia? theTypeName
	| Bool
	| Zmiennoprzecinkowy
	| Otchłań
	| Auto
	| dekltypSpecyfikator;

theTypeName: Identyfikator;

nazwaPseudoDestruktora:
	zagnieżdżonySpecyfikatorImienia? (theTypeName Dwudwukropek)? Tylda theTypeName
	| Tylda dekltypSpecyfikator;

przyrostkoweWyrażenie:
	pierwotneWyrazenie
	| przyrostkoweWyrażenie LewyNawiasKwadratowy (wyrażeniePrzypisania | klamraListaInicj) PrawyNawiasKwadratowy
	| przyrostkoweWyrażenie LewaParenteza initializerList? PrawaParenteza
	| (simpleTypeSpecifier) (
		LewaParenteza initializerList? PrawaParenteza
		| klamraListaInicj
	)
	| przyrostkoweWyrażenie (Kropka | Strzałka) (
		wyrażenieId | nazwaPseudoDestruktora
	)
	| przyrostkoweWyrażenie (Inkrementacja | Dekrementacja)
	| (
		DynamicznyRzut
		| StatycznyRzut
		| ZreinterpretujRzut
		| StałyRzut
	) MniejNiż theTypeId WięcejNiż LewaParenteza wyrażeniePrzypisania PrawaParenteza
	| WytypujId LewaParenteza (wyrażeniePrzypisania | theTypeId) PrawaParenteza;

noweWyrażenie:
	Dwudwukropek? Nowy (LewaParenteza initializerList PrawaParenteza)? (
		nowyTypId
		| (LewaParenteza theTypeId PrawaParenteza)
	) nowyInicjator?;

nowyInicjator:
	LewaParenteza initializerList? PrawaParenteza
	| klamraListaInicj;

typeSpecifier: trailingTypeSpecifier | classSpecifier;

classSpecifier: classHead LewaKlamra ((memberdeclaration | accessSpecifier Dwukropek)+)? PrawaKlamra;

accessSpecifier: Prywatna | Chroniona | Publiczna;

memberdeclaration:
	declSpecifier+? memberDeclaratorList? Średnik
	| funkcjaDefinicja
	| aliasDeclaration
	| Średnik;

memberDeclaratorList: memberDeclarator (Przecinek memberDeclarator)*;

aliasDeclaration: Używając Identyfikator Przypisanie theTypeId Średnik;

declarator:
	 noPointerDeclarator parametersAndQualifiers trailingReturnType;

trailingReturnType:
	Strzałka trailingTypeSpecifier+;

declSpecifier:
	storageKlasaSpecifier
	| typeSpecifier
	| functionSpecifier
	| Przyjaciel
	| DefiniowanieTypu
	| Constexpr;

functionSpecifier: WLinii | Wirtualna | Sprecyzowany;

storageKlasaSpecifier:
	DoWykazu
	| Static
	| WątekLokalny
	| Zewnętrzny
	| Zmienny;

parameterDeclaration:
	declSpecifier+? (
		declarator (
			Przypisanie inicjującaKlauzula
		)?
	);

parameterDeclarationList:
	parameterDeclaration (Przecinek parameterDeclaration)*;

parametersAndQualifiers:
	LewaParenteza parameterDeclarationList? PrawaParenteza cvQualifier+? Oraz?
		noeExceptSpecification?;

noeExceptSpecification:
	Bezwyjątków LewaParenteza wyrażenieWarunkowe PrawaParenteza
	| Bezwyjątków;

noPointerDeclarator:
	wyrażenieId
	| noPointerDeclarator (
		parametersAndQualifiers
		| LewyNawiasKwadratowy wyrażenieWarunkowe? PrawyNawiasKwadratowy
	);

memberDeclarator:
	declarator (
		virtualSpecifier+?
		| braceOrEqualInitializer?
	)
	| Identyfikator? Dwukropek wyrażenieWarunkowe;

braceOrEqualInitializer:
	Przypisanie inicjującaKlauzula
	| klamraListaInicj;

classHead:
	Jedność (
		zagnieżdżonySpecyfikatorImienia? Identyfikator Ostateczny?
	)?;

cvQualifier: Stała | Zwiewna;

trailingTypeSpecifier:
	simpleTypeSpecifier
	| elaboratedTypeSpecifier
	| cvQualifier;

classKey: Klasa | Struktura;

elaboratedTypeSpecifier:
	classKey (
	 zagnieżdżonySpecyfikatorImienia? Identyfikator
	)
	| Wyliczenie zagnieżdżonySpecyfikatorImienia? Identyfikator;

typSpecyfikatorSekw: typeSpecifier+;

nowyTypId: typSpecyfikatorSekw nowyDeklarator?;

nowyDeklarator:
	LewyNawiasKwadratowy wyrażeniePrzypisania PrawyNawiasKwadratowy
	| nowyDeklarator LewyNawiasKwadratowy wyrażenieWarunkowe PrawyNawiasKwadratowy;

theTypeId: typSpecyfikatorSekw;

funkcjaDefinicja:
	declSpecifier+? declarator virtualSpecifier+? functionBody;

functionBody:
	constructorInitializer? wyrażenieZłożone
	| functionTryBlock
	| Przypisanie (Domyślny | Usuń) Średnik;

functionTryBlock:
	Spróbuj constructorInitializer? wyrażenieZłożone obsługa+;

obsługa:
	Złap LewaParenteza wyjątekDeklaracja PrawaParenteza wyrażenieZłożone;

wyjątekDeklaracja:
	typSpecyfikatorSekw (declarator)?
	| Elipsa;

wyrażenieZłożone: LewaKlamra deklaracja+? PrawaKlamra;

wyrażenieFormuły: wyrażeniePrzypisania? Średnik;

deklaracja:
	wyrażenieOznakowane
	| blokDeklaracja
	| (
		wyrażenieFormuły
		| wyrażenieZłożone
		| wyrażenieWyboru
		| wyrażenieIteracji
		| wyrażenieSkoku
		| spróbujBlok
	);

wyrażenieSkoku:
	(
		Rozłam
		| Kontynuuj
		| Zwróć (wyrażeniePrzypisania | klamraListaInicj)?
		| IdźDo Identyfikator
	) Średnik;

spróbujBlok: Spróbuj wyrażenieZłożone obsługa+;

wyrażenieIteracji:
	Dopóty LewaParenteza warunek PrawaParenteza deklaracja
	| Rób deklaracja Dopóty LewaParenteza wyrażeniePrzypisania PrawaParenteza Średnik
	| Dla LewaParenteza (
		forInitStatement warunek? Średnik wyrażeniePrzypisania?
	) PrawaParenteza deklaracja;

forRangeDeclaration: declSpecifier+? declarator;

forInitStatement: wyrażenieFormuły | prostaDeklaracja;

prostaDeklaracja: declSpecifier+? initDeclaratorList? Średnik;

initDeclaratorList: initDeclarator (Przecinek initDeclarator)*;

initDeclarator: declarator initializer?;

initializer:
	braceOrEqualInitializer
	| LewaParenteza initializerList PrawaParenteza;
	
wyrażenieWyboru:
	W_przypadku_gdy LewaParenteza warunek PrawaParenteza deklaracja (Jeśli_nie deklaracja)?
	| Przełącz LewaParenteza warunek PrawaParenteza deklaracja;

warunek:
	wyrażeniePrzypisania
	| declSpecifier+? declarator (
		Przypisanie inicjującaKlauzula
		| klamraListaInicj
	);

blokDeklaracja:
	prostaDeklaracja
	| przestrzeńnazwAliasDefinicja
	| useDeclaration
	| używającDirective
	| aliasDeclaration;

useDeclaration:
	Używając ((WytypujNazwę? zagnieżdżonySpecyfikatorImienia) | Dwudwukropek) niewykwalifikowaneId Średnik;

używającDirective:
	Używając Przestrzeńnazw zagnieżdżonySpecyfikatorImienia? Identyfikator Średnik;

przestrzeńnazwAliasDefinicja:
	Przestrzeńnazw Identyfikator Przypisanie zagnieżdżonySpecyfikatorImienia? Identyfikator Średnik;

wyrażenieOznakowane:
	(
		Identyfikator
		| Przypadek wyrażenieWarunkowe
		| Domyślny
	) Dwukropek deklaracja;

constructorInitializer: Dwukropek memInitializer;

memInitializer:
	meminitializerid (
		LewaParenteza initializerList? PrawaParenteza
		| klamraListaInicj
	);

meminitializerid: classOrDeclType | Identyfikator;

classOrDeclType:
	zagnieżdżonySpecyfikatorImienia? Identyfikator
	| dekltypSpecyfikator;

virtualSpecifier: Nadpisanie | Ostateczny;

usuńWyrażenie:
	Dwudwukropek? Usuń (LewyNawiasKwadratowy PrawyNawiasKwadratowy)? wyrażenieRzutujące;

operatorJednoargumentowca: Lub | Mnożenie | Oraz | Plus | Tylda | Minus | Nie;

wyrażenieWskaźnikaCzłonkowego:
	wyrażenieRzutujące ((KropkaGwiazdka | StrzałkaGwiazdka) wyrażenieRzutujące)*;

wyrażenieMultiplikatywne:
	wyrażenieWskaźnikaCzłonkowego (
		(Mnożenie | Dzielenie | Mod) wyrażenieWskaźnikaCzłonkowego
	)*;

wyrażenieEksluzywneLub: wyrażenieOraz (Kareta wyrażenieOraz)*;

wyrażenieInkluzywneLub:
	wyrażenieEksluzywneLub (Lub wyrażenieEksluzywneLub)*;

logiczneWyrażenieOraz:
	wyrażenieInkluzywneLub (Oraz wyrażenieInkluzywneLub)*;

logiczneWyrażenieLub:
	logiczneWyrażenieOraz (Lub logiczneWyrażenieOraz)*;

wyrażenieWarunkowe:
	logiczneWyrażenieLub (
		Pytajnik wyrażeniePrzypisania Dwukropek wyrażeniePrzypisania
	)?;

literał:
	LiterałCałkowity
	| LiterałSymbolu
	| LiterałZmiennoprzecinkowy
	| LiterałŁańcuchowy
	| LiterałLogiczny
	| LiterałStworzonyPrzezUżytkownika;
