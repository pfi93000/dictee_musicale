# dictee_musicale
logiciel pour créer une dictée de rythmes<br/>

## Sonic Pi
Le logiciel [Sonic Pi](http://sonic-pi.net/) est un pré-requis pour la dictée de rythmes<br/>

Ce logiciel doit être installé avant d'utiliser la dictée.<br/>
Ce logiciel est gratuit, et compatible Windows, macOS et Raspberry PI.<br/>

## dictée
Le fichier dictee_rythme.rb est téléchargeable à partir de ce dépôt.<br/>
Il est lisible par le logiciel Sonic Pi.<br/>

La dictée commence toujours par 4 temps, et suivi de 6 "blocs" à trouver, puis fini par 2 temps.<br/>
Les 4 premières notes sont des do (dans la portée).<br/>
Les notes à trouver sont des gammes de do (en dessous de la portée) à do (dans la portée), puis redescendent à do (en dessous de la portée). En cas de soupir, une note est non jouée.<br/>
Les 2 denières sont des do (dans la portée).<br/>

## paramétrage de la dictée
Le fichier dictee_rythme.rb commence par :<br/>

sequence = 28            # numéro à changer pour avoir une autre dictée<br/>

binaire_ternaire = 1     # 1:binaire; 2:ternaire; rrand_i(1,2):choix au hazard<br/>

binaire_min = 1          # entre 1 et 16<br/>
binaire_max = 2          # entre binaire_mix et 16<br/>

ternaire_min = 2         # entre 1 et 10<br/>
ternaire_max = 2         # entre ternaire_min et 10<br/>

Ces variables sont paramétrables, en fonction du musicien devant faire la dictée.<br/>
Le numéro de sequence doit être changé manuellement, pour avoir une nouvelle dictée. Sinon, la dictée sera toujours la même.<br/>

La variaible binaire_ternaire permet de choisir si le ryhtme doit être binaire (par exemple 2/4 ou 4/4) ou ternaire (6/8 ou 9/8).<br/>

Les variables binaire_min et binaire_max permettent de choisir les rythmes binaires possibles :<br/>
1                                # 2 croches<br/>
2                                # noire<br/>
3                                # croche & 2 doubles<br/>
4                                # noire (encore, pour avoir plus souvent des noires)<br/>
5                                # triolet<br/>
6                                # noire (encore, pour avoir plus souvent des noires)<br/>
7                                # 2 croches (encore)<br/>
8                                # croche pointée double<br/>
9                                # 4 doubles croches<br/>
10                               # soupir<br/>
11                               # 2 croches (encore)<br/>
12                               #  double & croche pointée<br/>
13                               # 2 doubles + croche<br/>
14                               # croche noire croche<br/>
15                               # demi soupir croche<br/>
16                               # noire pointée croche<br/>

Les variables ternaire_min et ternaire_max permettent de choisir les rythmes ternaires possibles :<br/>
1                                # noire croche<br/>
2                                # 3 croches<br/>
3                                # noire pointée<br/>
4                                # croche noire<br/>
5                                # croche pointée, une double croche et croche<br/>
6                                # demi soupir noire<br/>
7                                # noire demi-soupir<br/>
8                                # demi-soupir 2 croches<br/>
9                                # croche demi-soupir croche<br/>
10                               # 2 croches demi-soupir<br/>

## journal
La réponse à la dictée est dans le journal de Sonic Pi<br/>
