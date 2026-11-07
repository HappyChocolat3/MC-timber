# inv_tweakie 🎒

Paczka danych (data pack) do **Minecraft Java Edition 1.21.5+ (w tym 26.x)**, inspirowana starym modem
Inventory Tweaks. Działa bez modów, także na serwerze. Inni gracze nie muszą nic instalować.

## Funkcje

### 1. Automatyczne uzupełnianie paska
Gdy postawisz ostatni blok ze stosu, zjesz ostatnie jedzenie, rzucisz ostatnią perłę albo zepsujesz
narzędzie, w to samo miejsce na pasku trafi następny taki sam przedmiot z ekwipunku.
- Uzupełnianie działa tylko wtedy, gdy przedmiot faktycznie został **zużyty**. Paczka sprawdza to
  w statystykach gry (użyto / zepsuto).
- Wyrzucenie przedmiotu klawiszem Q albo przełożenie go myszką **nie** powoduje uzupełnienia.

### 2. Sortowanie skrzyń
**Otwórz skrzynię, beczkę lub shulker box, skradając się (Shift), z pustymi obiema rękami.**
Zawartość zostanie połączona w pełne stosy i posortowana według grup. Działa też na podwójnych skrzyniach.

### 3. Sortowanie ekwipunku
**Przytrzymaj Shift i patrz prosto w górę przez około sekundę.** Możesz też wpisać na czacie
(przy zamkniętym ekwipunku):
```
/trigger sortuj
```
Sortuje główny ekwipunek (27 slotów). Pasek, zbroja i druga ręka zostają nietknięte.
Nie trzeba mieć uprawnień operatora.

### Kolejność grup
1. narzędzia i broń
2. zbroja
3. inne przedmioty z wytrzymałością (łuk, wędka, tarcza…)
4. drewno
5. kamień, ziemia, wełna, szkło
6. rudy i surowce
7. jedzenie i mikstury
8. łupy z mobów
9. reszta

W obrębie grupy przedmioty zostają w kolejności pierwszego wystąpienia. Polecenia Minecrafta
nie umieją sortować alfabetycznie.

## Bezpieczeństwo przedmiotów
Przed zapisem paczka sprawdza, czy łączna liczba przedmiotów się zgadza i czy wszystko się mieści.
Jeśli coś się nie zgadza, nic nie zmienia i pokazuje komunikat „Nie udało się posortować”.

## Instalacja
1. Uruchom `./build.sh`, który tworzy `inv_tweakie.zip` w głównym folderze repozytorium.
   Możesz też pobrać gotowy `inv_tweakie.zip`.
2. Wrzuć plik do `.minecraft/saves/<twój świat>/datapacks/`, albo na serwerze do `world/datapacks/`.
3. W grze wpisz `/reload`.

## Konfiguracja
```
/scoreboard players set #refill it.config 0      # wyłącz uzupełnianie paska
/scoreboard players set #chest_sort it.config 0  # wyłącz sortowanie skrzyń
/scoreboard players set #inv_sort it.config 0    # wyłącz sortowanie ekwipunku (gest i /trigger)
```
Wartość `1` z powrotem włącza daną funkcję.

## Jak to działa i ograniczenia
- Paczka zapamiętuje, co każdy gracz trzyma w ręce, w ukrytych beczkach w warstwie bedrocka
  (y = -64, x = 0–1, z = 0–…) w chunku 0,0 w Overworldzie. Ten chunk jest stale załadowany (`forceload`).
  Polecenie odinstalowania przywraca w tym miejscu bedrock.
- Nie ma przycisku „Sortuj” w oknie ani skrótu klawiszowego, bo paczka danych nie może zmieniać interfejsu.
- Sortowanie skrzynek ender nie jest obsługiwane.
- Uzupełnianie bierze pierwszy pasujący stos z głównego ekwipunku, nie z paska.

## Diagnostyka
```
/function inv_tweakie:debug
```
Włącza i wyłącza komunikaty na czacie, które pokazują, co paczka wykrywa i na którym etapie się zatrzymuje.

## Odinstalowanie
```
/function inv_tweakie:uninstall
```
Potem wyłącz lub usuń paczkę.
