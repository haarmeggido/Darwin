

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

## Przykładowe Wyprowadzenie

Oto sposób wyprowadzenia prostego programu wypisującego kilka pierwszych wartości z ciągu Fibonacciego:

```
#include<iostream>
using namespace std;
int main(){
int f1 = 1;
int f2 = 1;
for(int i=0,i<10,i++){
cout<<f1<<endl;
cout<<f2<<endl;
f1+=f2;
f2+=f1;
}
}
```         

```
1. symbolStartowy: include Std NowaLinia FunkcjaGlowna LewaKlamra NowaLinia kod PrawaKlamra
2. include: Include ZnakMniejszosci CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY* ZnakWiekszosci NowaLinia
3. kod: polecenie polecenie for
4. polecenie: typZmiennej Spacja nazwaZmiennej Przypisanie operacja Srednik NowaLinia
5. typZmiennej: TypCalkowity
6. nazwaZmiennej: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY
7. operacja: zmienna
8. zmienna: zmiennaNielogiczna
9. zmiennaNielogiczna: wartoscLiczbowa
10. wartoscLiczbowa: CYFRA_NIE_ZERO
11. polecenie: typZmiennej Spacja nazwaZmiennej Przypisanie operacja Srednik NowaLinia
12. typZmiennej: TypCalkowity
13. nazwaZmiennej: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY
14. operacja: zmienna
15. zmienna: zmiennaNielogiczna
16. zmiennaNielogiczna: wartoscLiczbowa
17. wartoscLiczbowa: CYFRA_NIE_ZERO
18. for: For LewyNawias polecenie Przecinek zmienna Przecinek operacja PrawyNawias poInstrukcji
19. polecenie: typZmiennej Spacja nazwaZmiennej Przypisanie operacja
20. operacja: zmienna
21. zmienna: zmiennaNielogiczna
22. zmiennaNielogiczna: wartoscLiczbowa
23. wartoscLiczbowa: Zero
24. zmienna: wartoscLogiczna
25. wartoscLogiczna: zmiennaNielogiczna porownanie zmiennaNielogiczna
26. zmiennaNielogiczna: nazwaZmiennej
27. nazwaZmiennej: CHAR_LITEROWY
28. porownanie: ZnakMniejszosci
29. zmiennaNielogiczna: wartoscLiczbowa
30. wartoscLiczbowa: CYFRA_NIE_ZERO CYFRA
31. polecenie: operacja
32. operacja: zmienna Inkrementacja
33. zmienna: zmiennaNielogiczna
34. zmiennaNielogiczna: nazwaZmiennej
35. nazwaZmiennej: CHAR_LITEROWY
36. poInstrukcji: LewaKlamra NowaLinia kod PrawaKlamra NowaLinia
37. kod: cout cout polecenie polecenie
38. cout: Cout ZnakMniejszosci ZnakMniejszosci operacja ZnakMniejszosci ZnakMniejszosci Endl Srednik NowaLinia
39. operacja: zmienna
40. zmienna: zmiennaNielogiczna
41. zmiennaNielogiczna: nazwaZmiennej
42. nazwaZmiennej: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY
43. cout: Cout ZnakMniejszosci ZnakMniejszosci operacja ZnakMniejszosci ZnakMniejszosci Endl Srednik NowaLinia
44. operacja: zmienna
45. zmienna: zmiennaNielogiczna
46. zmiennaNielogiczna: nazwaZmiennej
47. nazwaZmiennej: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY
48. polecenie: nazwaZmiennej Zwiekszenie operacja Srednik NowaLinia
49. nazwaZmiennej: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY
50. operacja: zmienna
51. zmienna: zmiennaNielogiczna
52. zmiennaNielogiczna: nazwaZmiennej
53. nazwaZmiennej: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY
54. polecenie: nazwaZmiennej Zwiekszenie operacja Srednik NowaLinia
55. nazwaZmiennej: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY
56. operacja: zmienna
57. zmienna: zmiennaNielogiczna
58. zmiennaNielogiczna: nazwaZmiennej
59. nazwaZmiennej: CHAR_LITEROWY CHAR_LITEROWY_LUB_CYFROWY
```

## Przykład

Poniżej znajduje się przykładowy blok kodu napisany w języku Darwin:

```
w_przypadku_gdy (x == 1)
wypisz "x jest równe 1";
jeśli_nie w_przypadku_gdy (x == 2)
wypisz "x jest równe 2;
jeśli_nie w_przypadku_gdy (x == 3)
wypisz "x jest równe 3";
jeśli_nie
wypisz "x jest inne";
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
