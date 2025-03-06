```dataview
list
from "ES/1 ANNE/INFORMATIQUE/BASE DE DONNES"
where !contains(file.name, "00") and contains(file.name,"COURS")
sort file.name asc
```

Cours : [https://mylos.cifom.ch/cours/int-bas-db/](https://mylos.cifom.ch/cours/int-bas-db/)
Git : [https://mylos.cifom.ch/gitlab/ZeinalovD/intdb/-/boards](https://mylos.cifom.ch/gitlab/ZeinalovD/intdb/-/boards)

###### Connection to the base psql
---
1. sudo ssh -i ~/.ssh/zeinalovd@kobenhavn_rsa -N -L 63333:intdb10.node.dhu:5432 zeinalovd@kobenhavn.s2.rpn.ch
2. psql -h localhost -p 63333 -U postgres [table] -W

##### Errors Bash
---
```
-bash: ./script.sh: /bin/bash^M: bad interpreter: No such file or directory
```
- Pour résoudre cette erreur, il faut changer le format de fichier en LF dans le NOOTEPAD++

