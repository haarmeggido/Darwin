

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
| null                       | `null`;                      |
| Dodawanie                  | `+`;                         |
| Odejmowanie                | `-`;                         |
| Mnozenie                   | `*`;                         |
| Dzielenie                  | `/`;                         |
| Modulo                     | `%`;                         |
| Dwukropek                  | `:`;                         |
| ZnakZapytania              | `?`;                         |
| Inkrementacja              | `++`;                        |
| Dekrementacja              | `--`;                        |
| For                        | `dla`;                       |
| While                      | `dopoki`;                    |
| If                         | `jesli`;                     |
| Else                       | `inaczej`;                   |
| LewyNawias                 | `(`;                         |
| PrawyNawias                | `)`;                         |
| LewaKlamra                 | `{`;                         |
| PrawaKlamra                | `}`;                         |
| TypZnakowy                 | `znak`;                      |
| TypCalkowity               | `calkowity`;                 |
| TypZmiennoprzecinkowy      | `zmiennoprzecinkowy`;        |
| TypLogiczny                | `logiczny`;                  |
| TypWieloznakowy            | `wieloznakowy`;              |
| Prawda                     | `prawda`;                    |
| Herezja                    | `herezja`;                   |
| Porownanie                 | `==`;                        |
| ZnakMniejszosci            | `<`;                         |
| ZnakWiekszosci             | `>`;                         |
| ZnakMniejszosciLubRownosci | `<=`;                        |
| ZnakWiekszosciLubRownosci  | `>=`;                        |
| ZnakNierownosci            | `!=`;                        |
| Include                    | `#zawiera`;                  |
| FunkcjaGlowna              | `calkowity glowna()`;        |
| Przypisanie                | `=`;                         |
| Zwiekszenie                | `+=`;                        |
| Zmniejszenie               | `-=`;                        |
| Wymnozenie                 | `*=`;                        |
| Wydzielenie                | `/=`;                        |
| Lub                        | `||`;                        |
| I                          | `&&`;                        |
| Nie                        | `!`;                         |
| Srednik                    | `;`;                         |
| Przecinek                  | `,`;                         |
| Spacja                     | ` `;                         |
| NowaLinia                  | `[\n\r][\n\r]*`;             |
| Cout                       | `cout`;                      |
| Cin                        | `cin`;                       |
| Endl                       | `koniecl`;                   |
| UsingNamespace             | `uzywa przestrzeni nazw `;   |
| ZMIENNA_CHAR               | `[A-Za-z0-9]`;               |
| CHAR_LITEROWY              | `[a-zA-Z]`;                  |
| NAZWA                      | `[A-Za-z][A-Za-z0-9]*`;      |
| STRING                     | `' (~["])+ '`;               |
| Zero                       | `0`;                         |
| LICZBA                     | `[1-9][0-9]*`;               |
| KROPKA                     | `.`;                         |
| Apostrof                   | `'`;                         |
| Cudzyslow                  | `"`;                         |
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
