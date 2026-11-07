# MC-Timber 🪓

Paczka danych (data pack) do **Minecraft Java Edition 1.21.5+**: zetnij jeden pień siekierą,
a reszta drzewa spadnie razem z nim.

> To jest **paczka danych**, nie paczka zasobów. Paczki zasobów (resource pack) zmieniają
> tylko tekstury, dźwięki i modele i nie mogą zmieniać rozgrywki. Ścinanie drzew wymaga paczki danych.

## Jak działa

- Wykop siekierą jeden pień (dowolnego drewna, także karmazynowe i spaczone trzony z Netheru),
  a wszystkie połączone pnie (również po skosie) zostaną ścięte i wypadną z nich przedmioty.
- **Zużycie siekiery** jest takie, jakby każdy pień był wykopany osobno: +1 punkt zużycia za każdy pień,
  z uwzględnieniem **Niezniszczalności (Unbreaking)**, czyli szansy 1/(poziom+1). Jeśli siekiera się zniszczy,
  ścinanie się zatrzymuje, a reszta drzewa zostaje.
- **Pnie postawione przez gracza nie są ścinane.** Każdy postawiony pień (wykrywany statystyką „użyto”) dostaje niewidzialny znacznik
  (encję `marker`). Takie pnie są pomijane, a wykopanie ich działa normalnie.
- **Powalone drzewa i budowle nie są ścinane.** Ścinanie działa tylko wtedy, gdy pnie stykają się
  z **naturalnymi liśćmi** (`persistent=false`, czyli nie postawionymi przez gracza) albo, w Netherze,
  z blokami brodawek lub świetlikiem grzybowym. Powalone drzewa nie mają liści, więc są pomijane.
  Dzięki temu nie ścinają się też budowle z pni postawionych przed instalacją paczki.
- Działa tylko w trybie przetrwania i przygody, gdy trzymasz siekierę w głównej ręce.
- **Shift (skradanie się)** = zwykłe kopanie jednego bloku (można to wyłączyć).

## Instalacja

1. Uruchom `./build.sh`, aby utworzyć `MC-Timber.zip`. Możesz też skopiować folder z `pack.mcmeta` i `data/`.
2. Wrzuć plik do `.minecraft/saves/<twój świat>/datapacks/`, albo na serwerze do `world/datapacks/`.
3. W grze wpisz `/reload` (lub wejdź ponownie do świata).

## Konfiguracja

```
/scoreboard players set #max_logs timber.config 256      # maks. liczba pni naraz (domyślnie 256)
/scoreboard players set #sneak_disables timber.config 0  # 0 = Shift nie wyłącza ścinania
```

## Odinstalowanie

```
/function timber:uninstall
```
Potem usuń paczkę z folderu `datapacks` lub wpisz `/datapack disable "file/MC-Timber.zip"`.

## Ograniczenia

- Ścięcie wykrywane jest po wypadnięciu przedmiotu, więc przy `/gamerule doTileDrops false` nie zadziała.
- Pnie postawione **przed** instalacją paczki nie mają znacznika. Chroni je wtedy tylko warunek naturalnych liści.
- Znaczniki są usuwane co 5 s, gdy pnia już nie ma (tylko w załadowanych chunkach).
- Bardzo duże drzewa przy dużym `#max_logs` mogą przekroczyć `maxCommandChainLength`.
  Wtedy podnieś tę regułę gry lub zmniejsz `#max_logs`.
- Siekiery z modów bez komponentu `max_damage` nie ścinają całych drzew, bo nie da się policzyć ich zużycia.
