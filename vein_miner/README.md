# vein_miner ⛏️

Paczka danych (data pack) do **Minecraft Java Edition 1.21.5+ (w tym 26.x)**: wykop kilofem jeden blok rudy,
a całe złoże zostanie wykopane naraz.

## Jak działa
- Obsługiwane rudy: węgiel, żelazo, miedź, złoto, czerwony kamień, lazuryt, diament, szmaragd,
  kwarc netherowy, złoto netherowe i starożytne zgliszcza. Każda w wersji zwykłej i łupkowej
  (deepslate), które liczą się jako jedno złoże.
- Bloki złoża łączą się także po skosie (26 sąsiadów).
- **Zużycie kilofa jest standardowe:** +1 za każdy blok, z uwzględnieniem Niezniszczalności (Unbreaking).
  Jeśli kilof się zniszczy, kopanie się zatrzymuje.
- **Dropy jak przy zwykłym kopaniu:** Szczęście (Fortune) i Jedwabny dotyk (Silk Touch) działają.
- **Doświadczenie** wypada w ilościach jak w zwykłej grze. Przy Jedwabnym dotyku nie wypada.
- Trzeba trzymać kilof odpowiedni do rudy. Jeśli z pierwszego bloku nic nie wypadnie, na przykład diament
  kopany drewnianym kilofem, paczka nic nie robi.
- **Shift (skradanie się)** = zwykłe kopanie jednego bloku.

## Instalacja
1. Pobierz `vein_miner.zip` albo zbuduj go poleceniem `./build.sh`.
2. Wrzuć plik do `.minecraft/saves/<twój świat>/datapacks/` i wpisz w grze `/reload`.

## Konfiguracja
```
/scoreboard players set #max_blocks vm.config 64      # maks. liczba bloków naraz (domyślnie 64)
/scoreboard players set #sneak_disables vm.config 0   # 0 = Shift nie wyłącza
/scoreboard players set #xp vm.config 0               # 0 = bez doświadczenia z dodatkowych bloków
```

## Diagnostyka
```
/function veinminer:debug
```
Włącza i wyłącza komunikaty pokazujące, na którym etapie paczka się zatrzymuje.

## Odinstalowanie
```
/function veinminer:uninstall
```
