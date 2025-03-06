# DEVOIRS

# Sondage
### Démarche

> 1. Identifier les entités principales à partir du texte fourni.
> 2. Établir les relations entre ces entités.
> 3. Assigner les cardinalités aux relations (minimum/maximum).
> 4. Associer les propriétés aux entités correspondantes.    
> 5. Déterminer un identifiant unique pour chaque entité.
> 6. Dessiner le schéma conceptuel des données.
> 7. Revérifier le modèle :
>     - Les associations sont-elles pertinentes ?
>     - Les propriétés sont-elles atomiques et uniques ?
> 8. Valider avec les utilisateurs finaux.

## Objectif

Modéliser les données pour prévoir les effectifs étudiants selon les métiers et sites de formation.

## Utilisateurs

- **Emma W.** : Une étudiante à Neuchâtel, utilise des outils en ligne.
- **Satya N.** : Responsable scolaire avec accès admin.
    

## Cas d'utilisation

### Actions d'Emma W.

1. Participer à un sondage pour ses formations
    
    - Sélection de la formation (« art », « comédienne ») et des dates.
        
    - Confirmation des choix via l'interface.
        
2. Rechercher des informations sur une formation ou un site.
    

### Actions de Satya N.

1. Visualiser les statistiques pour une année donnée avec une carte interactive.
    
2. Ajouter, modifier ou supprimer des formations et centres de formation.
    

## Interfaces simplifiées

### Page d'accueil

```
Page d'accueil
==============

formations : _________
sites de formation : _________
[rechercher]

[sondage]
```

### Page sondage

```
Sondage
=======

+-------------+-----------+------+---------------+
| nom         | lieu      | date               |
+-------------+-----------+------+---------------+
| Art         | CPNE      | 2024              |
+-------------+-----------+------+---------------+
| Comédienne  | CPMB      | 2028              |
+-------------+-----------+------+---------------+
[confirmer]
```

### Page statistiques (Admin)

```
Statistiques
============

CPNE (2) --- Neuchâtel (3)
```

## Modèle conceptuel

Un schéma simplifié montre les entités principales :

1. Formations
    
2. Sites de formation
    
3. Participants
    

Les relations incluent les inscriptions et les localisations.