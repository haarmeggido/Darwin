## Lista tokenów

<!---
| Token           | Znaczenie                                             |
|-----------------|-------------------------------------------------------|
| Identifikatory  | Zmienne, funkcje, klasy, itp.                          |
| Słowa kluczowe  | Auto, break, case, catch, const, continue, itp.        |
| Literały        | Liczby całkowite, liczby zmiennoprzecinkowe, itp.      |
| Operator: &&    | Operator logicznego AND                                |
| Operator: \|\|  | Operator logicznego OR                                 |
| Operator: !     | Operator logicznego NOT                                |
| Operator: ==    | Operator równości                                     |
| Operator: !=    | Operator nierówności                                  |
| Operator: <     | Operator mniejszości                                  |
| Operator: >     | Operator większości                                   |
| Operator: <=    | Operator mniejszy lub równy                           |
| Operator: >=    | Operator większy lub równy                            |
| Operator: ++    | Operator inkrementacji                                |
| Operator: --    | Operator dekrementacji                                |
| Operator: <<    | Operator strumienia wyjściowego                        |
| Operator: >>    | Operator strumienia wejściowego                        |
| Operator: ()    | Operator wywołania funkcji                            |
| Operator: []    | Operator wywołania indeksowego dla tablic i kontenerów |
| Operator: .     | Operator kropki używany do dostępu do składowych obiektu |
| Operator: ->    | Operator strzałki używany do dostępu do składowych wskaźnika |
| Operator: +=    | Operator przypisania z dodawaniem                      |
| Operator: -=    | Operator przypisania z odejmowaniem                    |
| Operator: *=    | Operator przypisania z mnożeniem                       |
| Operator: /=    | Operator przypisania z dzieleniem                      |
| Operator: %=    | Operator przypisania z resztą z dzielenia              |
| Operator: <<=   | Operator przypisania z przesunięciem bitowym w lewo     |
| Operator: >>=   | Operator przypisania z przesunięciem bitowym w prawo    |
| Operator: &=    | Operator przypisania z operacją bitowego AND           |
| Operator: \|=   | Operator przypisania z operacją bitowego OR            |
| Operator: ^=    | Operator przypisania z operacją bitowego XOR           |
| Operator: sizeof | Operator zwracający rozmiar typu lub obiektu           |
| Operator: typeid | Operator zwracający informacje o typie                 |
| Inne tokeny     | Pozostałe tokeny, których znaczenie zależy od kontekstu |



-->







Identifikatory:
   Zmienne, funkcje, klasy, itp.: myVariable, calculateSum, MyClass

Słowa kluczowe:
   auto, break, case, catch, const, continue, default, do, else, enum, explicit, extern, false, for, goto, if, inline, namespace, new, nullptr, operator, private, protected, public, return, sizeof, static, struct, switch, template, this, throw, true, try, typedef, typeid, typename, union, using, virtual, void, volatile, while

Literały:
   Liczby całkowite: 123, 0, -42, itp.
   Liczby zmiennoprzecinkowe: 3.14, 0.5, -2.7, itp.
   Łańcuchy znaków: "Hello", "World", "C++", itp.
   Znaki: 'a', 'b', 'c'

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
   \# - używane przy dyrektywach preprocesora.

Komentarze:
   // - komentarz jednolinijkowy.
   /* */ - komentarz wielolinijkowy.

Dyrektywy preprocesora:
   #include, #define, #endif, #if, #elif, #else


Tokeny dla typów danych:
   bool - typ boolowski.
   char - typ znakowy.
   short - typ krótki.
   int - typ całkowitoliczbowy.
   long - typ długi.
   double - typ zmiennoprzecinkowy podwójnej precyzji.
   void - typ pusty.

Tokeny dla operatorów przypisania:
   += - operator przypisania z dodawaniem.
   -= - operator przypisania z odejmowaniem.
   *= - operator przypisania z mnożeniem.
   /= - operator przypisania z dzieleniem.
   %= - operator przypisania z resztą z dzielenia.

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
