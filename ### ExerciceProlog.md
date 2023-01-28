### Exercice
- l'acronyme Prolog veut dire Programmation Logique
- le paradigme de programmation lié à Prolog est le paradigme de programmation déclaratif.
-Le programmeur ne s’occupe pas de la manière d’obtenir le résultat;
par contre, le programmeur doit faire la description du problème à
résoudre en décrivant les objets concernés, leurs propriétés et les
relations qu’ils vérifient.
l Cette description constitue la base de connaissance
Exprimer en Prolog les propositions suivantes, identifier les objets, 
les faits, les règles

- la chèvre est un animal herbivore
```pl
animal(chevre).
herbivore(chevre).
```
-le loup est un animal cruel
```pl
animal(loup).
cruel(loup).
```
- toute chose cruelle est carnivore
```pl
carnivore(X) :-cruel(X).
```
- un animal carnivore mange de la viande et un animal herbivore mange l'herbe
```pl
mange(X,viande) :- animal(X),carnivore(X).
mange(X,herbe) :- animal(X),herbivore(X).
```
- un animal carnivore mange des animaux herbivores

```pl
mange(X,Y) :- animal(X),animal(Y),carnivore(X),herbivore(Y)
```
- les carnivores et les herbivores boivent de l'eau
```pl
boit(X,eau) :- carnivore(X); herbivore(X)
```
- un animal consomme ce qu'il boit ou ce qu'il mange
```pl
consomme(X,Y) :- animal(X), (boit(X,Y);mange(X,Y)).
```
- Question: y a-t-il un animal cruel et que consomme-t-il?
```pl
?- animal(X),cruel(X),consomme(X,Y).
```
```py
a=0
b=a
print(a)
```