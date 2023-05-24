## Lista tokenów

| Token                      | Regex                        |
|----------------------------|------------------------------|
| SPACE						|	' '->skip|
|TAB							|	[\t]->skip|
|COMMENT                     |   '#'~[\n]+'\n'|
|SINGLE_APOSTROPHE			|	[']|
|APOSTROPHE                  |   '"'|
|SINGLE_SEMICOLON            |   ';'|
|WHILE_LOOP_BEGIN            |   'while'|
|UNTIL_LOOP_BEGIN            |   'until'|
|FOR_LOOP_BEGIN              |   'for'|
|LOOP_MIDDLE                 |   'do'|
|LOOP_END                    |   'done'|
|IF_START                    |   'if'|
|IF_MIDDLE                   |   'then'|
|IF_END                      |   'fi'|
|LOOP_IN                     |   'in'|
|CONDITION_LEFT_SINGLE       |   '['|
|CONDITION_RIGHT_SINGLE      |   ']'|
|CONDITION_EQ                |   '-eq'|
|EQ                          |   '='|
|CONDITION_NEQ               |   ('-ne'&#124;'!=')|
|CONDITION_GT                |   '-gt'|
|CONDITION_GE                |   ('-ge'&#124;'>=')|
|CONDITION_LT                |   '-lt'|
|CONDITION_LE                |   ('-le'&#124;':')|
|MODULO                      |   '%'|
|CONDITION_DOUBLE_AMPERSAND  |   '&&'|
|CONDITION_DOUBLE_PIPE       |   '&#124;&#124;'|
|ELSE                        |   'else'|
|ELSE_IF                     |   'elif'|
|CASE_START                  |   'case'|
|CASE_DEFAULT                |   '*)'|
|BRAKE_ABSOLUTE              |   ';;'|
|BRAKE_CONTINUATION          |   ';&'|
|BRAKE_WITH_NEXT_EXEC        |   ';;&'|
|CASE_END                    |   'esac'|
|DOLLAR_SIGN                 |   '$'|
|VARIABLE                    |   '$'~[$#\n;0-9 ]~[$#\n; ]*|
|SCRIPT_ARGUMENT_NUMBER      |   '$#'|
|SCRIPT_ARGUMENT             |   '$'[0-9]|
|BOOL                        |   ('true'&#124;'false')|
|HEX_NUMBER_WITHOUT_SIGN     |   ('Ox'&#124;'16#')[0-9A-Fa-f]+|
|OCTAL_NUMBER_WITHOUT_SIGN   |   ('O'&#124;'8#')[0-7]+|
|NEW_LINE                    |   [\n]|
|PIPE                        |   '&#124;'|
|PLUS                        |   '+'|
|WILDCARD_OR_MULTIPLY        |   '*'|
|WILDCARD                    |   '?'|
|MINUS                       |   '-'|
|DIVIDE                      |   '/'|
|LEFT_SLASH					|	'\\'|
|AMPERSAN					|   '&'|
|L_PARENTH_ROUND             |   '('|
|R_PARENTH_ROUND             |   ')'|
|L_PARENTH_CURLY             |   '{'|
|R_PARENTH_CURLY             |   '}'|
|POINTER_RIGHT				|   '>'|
|POINTER_LEFT				|   '<'|
|BOOL_NEGATION               |   '!'|
|FUNCTION_START              |   'function'|
|SELECT                      |   'select'|
|COPROCESS_START				|   'coproc'|
|TIME                        |   'time'|
|CREATE_VARABLE              |   'declare'|
|TILDA                       |   '~'|
|LAST_FOLDER                 |   '..'|
|THIS_FOLDER                 |   '.'|
|NUMBER                      |   [1-9][0-9]*|
|ALPHANUMERIC                |   [a-zA-Z0-9_]|
|ALPHA                       |   [A-Za-z]|
|DIGIT                       |   [0-9]|
|MINUSP						|	'-p'|
     
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    Identifikatory:
        Zmienne, funkcje, klasy, itp.: myVariable, calculateSum, MyClass, itp.

    Słowa kluczowe:
        auto, break, case, catch, const, continue, default, do, else, enum, explicit, extern, false, for, goto, if, inline, namespace, new, nullptr, operator, private, protected, public, return, sizeof, static, struct, switch, template, this, throw, true, try, typedef, typeid, typename, union, using, virtual, void, volatile, while, itp.

    Literały:
        Liczby całkowite: 123, 0, -42, itp.
        Liczby zmiennoprzecinkowe: 3.14, 0.5, -2.7, itp.
        Łańcuchy znaków: "Hello", "World", "C++", itp.
        Znaki: 'a', 'b', 'c', itp.

    Operatorzy:
        Arytmetyczne: +, -, *, /, %, itp.
        Porównania: ==, !=, <, >, <=, >=, itp.
        Logiczne: &&, ||, !, itp.
        Przypisania: =, +=, -=, *=, /=, %=, itp.
        Inkrementacji i dekrementacji: ++, --, itp.
        Bitowe: &, |, ^, ~, <<, >>, itp.
        Operator warunkowy: ?:.
        Wywołania funkcji: ().
        Dostępu do składowych: . (kropka), -> (strzałka).
        Wywołania operatorów: [], (), ->.

    Separatory:
        ; - średnik oznaczający koniec instrukcji.
        , - przecinek używany do rozdzielania elementów w liście, argumentach funkcji, itp.
        (, ) - nawiasy okrągłe używane do grupowania wyrażeń i wywoływania funkcji.
        {, } - nawiasy klamrowe używane do definiowania bloków kodu.
        [, ] - nawiasy kwadratowe używane przy indeksowaniu tablic.
        # - używane przy dyrektywach preprocesora.

    Komentarze:
        // - komentarz jednolinijkowy.
        /* */ - komentarz wielolinijkowy.

    Dyrektywy preprocesora:
        #include, #define, #ifdef, #ifndef, #endif, #if, #elif, #else, #pragma, itp.


    Tokeny dla typów danych:
        bool - typ boolowski.
        char - typ znakowy.
        wchar_t - typ znakowy rozszerzony.
        short - typ krótki.
        int - typ całkowitoliczbowy.
        long - typ długi.
        float - typ zmiennoprzecinkowy pojedynczej precyzji.
        double - typ zmiennoprzecinkowy podwójnej precyzji.
        long double - typ zmiennoprzecinkowy podwójnej precyzji i większego zakresu.
        void - typ pusty.

    Tokeny dla operatorów przypisania:
        += - operator przypisania z dodawaniem.
        -= - operator przypisania z odejmowaniem.
        *= - operator przypisania z mnożeniem.
        /= - operator przypisania z dzieleniem.
        %= - operator przypisania z resztą z dzielenia.
        <<= - operator przypisania z przesunięciem bitowym w lewo.
        >>= - operator przypisania z przesunięciem bitowym w prawo.
        &= - operator przypisania z operacją bitowego AND.
        |= - operator przypisania z operacją bitowego OR.
        ^= - operator przypisania z operacją bitowego XOR.

    Tokeny dla operatorów bitowych:
        & - operator bitowego AND.
        | - operator bitowego OR.
        ^ - operator bitowego XOR.
        ~ - operator bitowego negacji.
        << - operator przesunięcia bitowego w lewo.
        >> - operator przesunięcia bitowego w prawo.

    Tokeny dla operatorów logicznych:
        && - operator logicznego AND.
        || - operator logicznego OR.
        ! - operator logicznego NOT.

    Tokeny dla operatorów warunkowych:
        ?: - operator warunkowego if-else.

    Tokeny dla operatorów składowania:
        . - operator kropki używany do dostępu do składowych obiektu.
        -> - operator strzałki używany do dostępu do składowych wskaźnika.

    Tokeny dla operatorów porównania:
        == - operator równości.
        != - operator nierówności.
        < - operator mniejszości.
        > - operator większości.
        <= - operator mniejszy lub równy.
        >= - operator większy lub równy.

    Tokeny dla operatorów inkrementacji i dekrementacji:
        ++ - operator inkrementacji.
        -- - operator dekrementacji.

    Tokeny dla operatorów strumieniowych:
        >> - operator strumienia wejściowego.
        << - operator strumienia wyjściowego.

    Tokeny dla operatorów wywołania:

    () - operator wywołania funkcji.
    [] - operator wywołania indeksowego dla tablic i kontenerów.

    Tokeny dla operatorów innego zastosowania:

    sizeof - operator zwracający rozmiar typu lub obiektu.
    typeid - operator zwracający informacje o typie.
