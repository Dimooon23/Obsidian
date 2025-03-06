cmd

|   |   |
|---|---|
|javac projet.java|Compiler programme dans cmd|
|java projet.java|Exécuter programme|
|java projet|Compiler programme avec le fichier .class|
|--source-path / -sourcepath|Chemin des fichiers manquants (.java)|
|-classpath|Chemin de répértoire d'une classe (.class)  <br>javac -sourcepath ./src -classpath ./files ./HelloWorld.java|

javac -d dist -sourcepath src -classpath classes ./HelloWorld.java

|   |   |
|---|---|
|Gitignore:||
||[Dd]ebug/|
||*.classe|

|          |         |
| -------- | ------- |
| Notation |         |
| ---      | dossier |
| -        | fichier |


Exemples
projet  
 |    -HelloPatate.java  
 |  
 |---lib             
 |    |---src        
 |          -MesOutils.java

javac -sourcepath ./lib/src ./HelloPatate.java