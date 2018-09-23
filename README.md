# dictee_musicale
logiciel pour créer une dictée de rythmes

## Sonic Pi
Le logiciel [Sonic Pi](http://sonic-pi.net/) est un pré-requis pour la dictée de rythmes

Ce logiciel doit être installé avant d'utiliser la dictée.
Ce logiciel est gratuit, et compatible Windows, macOS et Raspberry PI.

## dictée
Le fichier dictee_rythme.rb est téléchargeable à partir de ce dépôt.
Il est lisible par le logiciel Sonic Pi.

La dictée commence toujours par 4 temps, et suivi de 6 "blocs" à trouver, puis fini par 2 temps.
Les 4 premières notes sont des do (dans la portée).
Les notes à trouver sont des gammes de do (en dessous de la portée) à do (dans la portée), puis redescendent à do (en dessous de la portée). En cas de soupir, une note est non jouée.
Les 2 denières sont des do (dans la portée).

## paramétrage de la dictée
Le fichier dictee_rythme.rb commence par :

sequence = 28            # numéro à changer pour avoir une autre dictée

binaire_ternaire = 1     # 1:binaire; 2:ternaire; rrand_i(1,2):choix au hazard

binaire_min = 1          # entre 1 et 16
binaire_max = 2          # entre binaire_mix et 16

ternaire_min = 2         # entre 1 et 10
ternaire_max = 2         # entre ternaire_min et 10

Ces variables sont paramétrables, en fonction du musicien devant faire la dictée.
Le numéro de sequence doit être changé manuellement, pour avoir une nouvelle dictée. Sinon, la dictée sera toujours la même.

La variaible binaire_ternaire permet de choisir si le ryhtme doit être binaire (par exemple 2/4 ou 4/4) ou ternaire (6/8 ou 9/8).

Les variables binaire_min et binaire_max permettent de choisir les rythmes binaires possibles :
1                                # 2 croches
2                                # noire
3                                # croche & 2 doubles
4                                # noire (encore, pour avoir plus souvent des noires)
5                                # triolet
6                                # noire (encore, pour avoir plus souvent des noires)
7                                # 2 croches (encore)
8                                # croche pointée double
9                                # 4 doubles croches
10                               # soupir
11                               # 2 croches (encore)
12                               #  double & croche pointée
13                               # 2 doubles + croche
14                               # croche noire croche
15                               # demi soupir croche
16                               # noire pointée croche

Les variables ternaire_min et ternaire_max permettent de choisir les rythmes ternaires possibles :
1                                # noire croche
2                                # 3 croches
3                                # noire pointée
4                                # croche noire
5                                # croche pointée double croche croche
6                                # demi soupir noire
7                                # noire demi-soupir
8                                # demi-soupir 2 croches
9                                # croche demi-soupir croche
10                               # 2 croches demi-soupir

## journal
La réponse à la dictée est dans le journal de Sonic Pi
