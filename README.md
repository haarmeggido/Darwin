

# Konwerter języka Darwin na C++

Ten projekt ma na celu stworzenie konwertera języka Darwin na język programowania C++. Język Darwin jest językiem programowania opartym na C++, ale wszystkie instrukcje są zapisywane po polsku. Konwerter umożliwi łatwe przetwarzanie kodu napisanego w języku Darwin na kod w języku C++.

## Wymagania

Do uruchomienia konwertera potrzebne są następujące narzędzia:

- Kompilator C++
- git Bash

## Instalacja

Aby zainstalować konwerter, wykonaj następujące kroki:

1. Sklonuj repozytorium:

   ```
   git clone https://github.com/haarmeggido/Darwin.git
   ```

2. Przejdź do katalogu z projektem:

   ```
   cd konwerter-darwin-cpp
   ```

3. Skompiluj kod:

   ```
   make
   ```

4. Uruchom konwerter:

   ```
   ./konwerter input.drw output.cpp
   ```

   gdzie `input.drw` to plik wejściowy z kodem w języku Darwin, a `output.cpp` to plik wynikowy z przekonwertowanym kodem w języku C++.

## Użycie

Konwerter jest uruchamiany z linii poleceń, a jego składnia wygląda następująco:

```
./konwerter input.drw output.cpp
```

gdzie `input.drw` to plik wejściowy z kodem w języku Darwin, a `output.cpp` to plik wynikowy z przekonwertowanym kodem w języku C++.

## Tokeny

```
| Token                      | Regex                        |
|----------------------------|------------------------------|
| null                       | `;`                          |
| Dodawanie                  | `+;`                         |
| Odejmowanie                | `-;`                         |
| Mnozenie                   | `*;`                         |
| Dzielenie                  | `/;`                         |
| Modulo                     | `%;`                         |
| Dwukropek                  | `:;`                         |
| ZnakZapytania              | `?;`                         |
| Inkrementacja              | `++;`                        |
| Dekrementacja              | `--;`                        |
| For                        | `for;`                       |
| While                      | `while;`                     |
| If                         | `if;`                        |
| Else                       | `else;`                      |
| LewyNawias                 | `(;`                         |
| PrawyNawias                | `);`                         |
| LewaKlamra                 | `{;`                         |
| PrawaKlamra                | `};`                         |
| TypZnakowy                 | `char;`                      |
| TypCalkowity               | `int;`                       |
| TypZmiennoprzecinkowy      | `float;`                     |
| TypLogiczny                | `bool;`                      |
| TypWieloznakowy            | `string;`                    |
| Prawda                     | `true;`                      |
| Herezja                    | `false;`                     |
| Porownanie                 | `==;`                        |
| ZnakMniejszosci            | `<;`                         |
| ZnakWiekszosci             | `>;`                         |
| ZnakMniejszosciLubRownosci | `<=;`                        |
| ZnakWiekszosciLubRownosci  | `>=;`                        |
| ZnakNierownosci            | `!=;`                        |
| Include                    | `#include;`                  |
| FunkcjaGlowna              | `int glowna();`              |
| Przypisanie                | `=;`                         |
| Zwiekszenie                | `+=;`                        |
| Zmniejszenie               | `-=;`                        |
| Wymnozenie                 | `*=;`                        |
| Wydzielenie                | `/=;`                        |
| Lub                        | `||;`                        |
| I                          | `&&;`                        |
| Nie                        | `!;`                         |
| Srednik                    | `;;`                         |
| Przecinek                  | `,;`                         |
| Spacja                     | ` ;`                         |
| NowaLinia                  | `[\n];`                      |
| Cout                       | `cout;`                      |
| Cin                        | `cin;`                       |
| Endl                       | `endl;`                      |
| Std                        | `using namespace std;;`      |
| UsingNamespace             | `using namespace ;`          |
| ZMIENNA_CHAR               | `[.];`                       |
| CHAR_LITEROWY_LUB_CYFROWY  | `[a-zA-Z0-9];`               |
| CHAR_LITEROWY              | `[a-zA-Z];`                  |
| CYFRA                      | `[0-9];`                     |
| CYFRA_NIE_ZERO             | `[1-9];`                     |
| Zero                       | `0;`                         |
| KROPKA                     | `.;`                         |
| Apostrof                   | `';`                         |
| Cudzyslow                  | `";`                         |
```

## Przykład

Poniżej znajduje się przykładowy blok kodu napisany w języku Darwin:

```
jesli (x == 1) {
  cout << "x jest równe 1" << koniecl;
} inaczej if (x == 2) {
  cout << "x jest równe 2" << koniecl;
} inaczej if (x == 3) {
  cout << "x jest równe 3" << koniecl;
} inaczej {
  cout << "x jest inne" << koniecl;
}
```

Po przekonwertowaniu na język C++ otrzymamy:

```cpp
if (x == 1) {
  cout << "x jest równe 1" << endl;
} else if (x == 2) {
  cout << "x jest równe 2" << endl;
} else if (x == 3) {
  cout << "x jest równe 3" << endl;
} else {
  cout << "x jest inne" << endl;
}
```

## Autorzy

- Miłosz Góralczyk (goralczykm@student.agh.edu.pl)
- Robert Barcik (rbarcik@student.agh.edu.pl)

## Licencja

Ten projekt jest udostępniany na licencji MIT. Szczegółowe informacje znajdują się w pliku
