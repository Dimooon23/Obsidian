```table-of-contents
title: 
style: nestedList # TOC style (nestedList|nestedOrderedList|inlineFirstLevel)
minLevel: 0 # Include headings from the specified level
maxLevel: 0 # Include headings up to the specified level
includeLinks: true # Make headings clickable
hideWhenEmpty: false # Hide TOC if no headings are found
debugInConsole: false # Print debug info in Obsidian console
```
# LIKE
## Utilisation

```
string LIKE _`pattern`_ [ESCAPE _`escape-character`_]
string NOT LIKE _`pattern`_ [ESCAPE _`escape-character`_]
```


| Expression | Definition                 |
| ---------- | -------------------------- |
| a%         | a suivie du texte          |
| \_b\_      | b entouré de 2 charactéres |


# SIMILAR TO

```
'abc' SIMILAR TO 'abc'          _true_
'abc' SIMILAR TO 'a'            _false_
'abc' SIMILAR TO '%(b|d)%'      _true_
'abc' SIMILAR TO '(b|c)%'       _false_
'-abc-' SIMILAR TO '%\mabc\M%'  _true_
'xabcy' SIMILAR TO '%\mabc\M%'  _false_
```

**SIMILAR TO** est un mélange entre **LIKE** et **REGEX**. 
C'est à dire il comprend les caractères comme : **%** ou \_  qui proviennent de la commande **LIKE** et il comprends certains commandes de la **REGEX** comme :  `|`, `*`, `+`, `?`, `{`_`m`_`}`,`{`_`m`_`,}`, 
`{`_`m`_`,`_`n`_`}`, `()` , `[...]` 

!!!! Il faut faire attention **SIMILAR TO** ne comprend pas ``.``
# POSIX Regular Expressions

## WHERE
~ => La chaîne correspond à l'expression régulière, en tenant compte de la casse
~* => La chaîne correspond à l'expression régulière, en tenant pas compte de la casse
!~ => La chaîne ne correspond pas à l'expression régulière, en tenant compte de la casse
!~* => La chaîne ne correspond pas à l'expression régulière, en tenant pas compte de la casse

```sql title:"Exemple d'utilisation"
SELECT product_name FROM products WHERE product_name ~ '\d{3}';
```

## EXEMPLES

`(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d`
### Décomposition

1. **`(0[1-9]|[12][0-9]|3[01])`**  
    Cette partie correspond au **jour** :
    
    - `0[1-9]` : correspond à un jour compris entre `01` et `09`.
    - `[12][0-9]` : correspond à un jour compris entre `10` et `29`.
    - `3[01]` : correspond aux jours `30` et `31`.
    - Les jours impossibles (comme `32`) sont exclus.
2. **`[- /.]`**  
    Cette partie correspond au séparateur.
    
    - `[- /.]` signifie que le séparateur peut être `-`, `/`, `.` ou un espace.
3. **`(0[1-9]|1[012])`**  
    Cette partie correspond au **mois** :
    
    - `0[1-9]` : correspond aux mois de `01` (janvier) à `09` (septembre).
    - `1[012]` : correspond aux mois `10`, `11`, et `12` (octobre à décembre).
4. **`[- /.]`**  
    Identique à la partie précédente, c'est un séparateur.
    
5. **`(19|20)\d\d`**  
    Cette partie correspond à l'**année** :
    
    - `(19|20)` : commence par `19` (pour les années 1900-1999) ou `20` (pour les années 2000-2099).
    - `\d\d` : complète avec deux chiffres supplémentaires pour former une année valide (`1900` à `2099`).

---
# REGEX SYNTAX

[REGEX CHEATSHEET](https://quickref.me/regex.html)

### **1. Délimiteurs de quantité**

|Délimiteur|Correspondance|
|---|---|
|`*`|0 ou plus occurrences|
|`+`|1 ou plus occurrences|
|`?`|0 ou 1 occurrence|
|`{m}`|Exactement `m` occurrences|
|`{m,}`|`m` ou plus occurrences|
|`{m,n}`|De `m` à `n` occurrences|
|`*?`|Version non-gourmande de `*`|
|`+?`|Version non-gourmande de `+`|
|`??`|Version non-gourmande de `?`|

### **2. Contraintes**

|Symbole|Description|
|---|---|
|`^`|Début de ligne|
|`$`|Fin de ligne|
|`(?=re)`|Vue positive en avant|
|`(?!re)`|Vue négative en avant|
|`(?<=re)`|Vue positive en arrière|
|`(?<!re)`|Vue négative en arrière|

### **3. Spécifications de symboles**

|Symbole|Description|
|---|---|
|`.`|N'importe quel caractère|
|`[abc]`|Un caractère parmi `a`, `b`, ou `c`|
|`[^abc]`|Aucun caractère parmi `a`, `b`, ou `c`|
|`[a-z]`|Une lettre entre `a` et `z`|

### **4. Caractères spéciaux**

|Symbole|Description|
|---|---|
|`\d`|Chiffres `[0-9]`|
|`\D`|Tout sauf chiffres|
|`\s`|Espaces blancs|
|`\S`|Tout sauf espaces blancs|
|`\w`|Lettres, chiffres ou `_`|
|`\W`|Tout sauf lettres, chiffres ou `_`|

### **5. Délimitations des mots**

| Symbole | Description                       |
| ------- | --------------------------------- |
| `\m`    | Début d'un mot                    |
| `\M`    | Fin d'un mot                      |
| `\y`    | Début ou fin d'un mot             |
| `\Y`    | Pas au début ni à la fin d'un mot |
| `\A`    | Début absolu de la chaîne         |
| `\Z`    | Fin absolue de la chaîne          |

