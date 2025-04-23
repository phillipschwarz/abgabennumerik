Abgabe von Mats Hoffstadt und Phillip Schwarz

1. Der Code wurde mit Julia 1.11.4 erstellt

2. Um den Code zu reproduzieren, öffnen sie ein Julia-REPL und für sie folgenden Code aus:
```julia
    include("code1.jl")
```

3. Jetzt haben sie Zugriff auf die folgenden Funktionen:
Aufgabe 3:

```julia
    tabelle_norm()
````
Gibt die Tabelle mit den Ergebnissen für die Dimensionen 2,3,5,8,10,15 aus. Diese werden vorher mit den folgenden Funktionen berechnet:

```julia
    norm_1(A::Matrix)
````
```julia
    norm_inf(A::Matrix)
````
```julia
    norm_F(A::Matrix)
````

und die Matrix H wird mit der Funktion:

```julia
create_H(n::Int)
````

erstellt.

Aufgabe 4:

```julia
    test()
```
Zum testen verschiedener Startwerte x_0 und Iterationszahlen n

Die folgenden Tabellen geben die Werte immer für Startwerte 0.1, 0.5, 1.0, 5.0 aus
```julia
    tabelle1()
````
Gibt eine Tabelle für S = 0.5, n = 10 und die Startwerte x_0 aus

```julia
    tabelle2()
````
Gibt eine Tabelle für S = 0.5, n = 5 und die Startwerte x_0 aus

```julia
    tabelle3()
````
Gibt eine Tabelle für S = 0.5, n = 3 und die Startwerte x_0 aus
