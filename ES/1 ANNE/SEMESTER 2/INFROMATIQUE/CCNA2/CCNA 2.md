# Modules 1 : Configuration de base des périphériques

# 1.0 Introduction

Faites défiler pour commencer 

### 1.0.1 Pourquoi devrais-je suivre ce module?

Bienvenue à la configuration de base des périphériques !

Bienvenue dans le premier module du CCNA: Notions de base sur la commutation, le routage et le sans fil ! Vous savez que les commutateurs et les routeurs sont livrés avec une configuration intégrée, alors pourquoi devriez-vous apprendre à configurer davantage les commutateurs et les routeurs?

Imaginez que vous avez acheté un modèle de train. Après l'avoir installé, vous avez réalisé que la voie n'était qu'une simple forme ovale et que les wagons ne circulaient que dans le sens des aiguilles d'une montre. Vous voudrez peut-être que la piste soit une forme de huit avec un passage supérieur. Vous voudrez peut-être avoir deux trains qui fonctionnent indépendamment l'un de l'autre et sont capables de se déplacer dans des directions différentes. Comment as-tu pu faire ça? Vous devrez reconfigurer la piste et les contrôles. C'est la même chose avec les périphériques réseau. En tant qu'administrateur réseau, vous avez besoin d'un contrôle détaillé des périphériques de votre réseau. Cela signifie configurer avec précision les commutateurs et les routeurs afin que votre réseau fasse ce que vous voulez qu'il fasse. Ce module propose de nombreuses activités de vérification de syntaxe et de Packet Tracer pour vous aider à développer ces compétences. C'est parti !

### 1.0.2 Qu'est-ce que je vais apprendre dans ce module?

**Titre du module:** Configuration de base des périphériques

**Objectif du module:** Configurer les appareils en utilisant les bonnes pratiques de sécurité.

|**Titre du rubrique**|**Objectif du rubrique**|
|---|---|
|**Configuration d'un commutateur avec les paramètres d'origine**|Configurer les paramètres d'origine sur un commutateur Cisco.|
|**Configuration des ports de commutateur**|Configurer les ports de commutateur pour répondre à la configuration réseau requise.|
|**Accès distant sécurisé**|Configurer l'accès de gestion sécurisé sur un commutateur.|
|**Configuration des paramètres de base d'un routeur**|Configurer les paramètres de base d'un routeur pour passer entre deux réseaux directement connectés, en utilisant le CLI.|
|**Vérification des réseaux directement connectés**|Vérifier la connectivité entre deux réseaux qui sont directement connectés à un routeur.|

## 1.1 Configuration d'un commutateur avec les paramètres d'origine

### 1.1.1 Séquence de démarrage du commutateur

Avant de pouvoir configurer un commutateur, vous devez l'allumer et lui permettre de passer par la séquence de démarrage en cinq étapes. Cette rubrique couvre les bases de la configuration d'un commutateur et inclut un travail pratique à la fin.

Une fois qu'un commutateur Cisco est mis sous tension, il passe par la séquence de démarrage suivante en cinq étapes :

**Étape 1:** Tout d'abord, le commutateur charge un programme auto-test de mise sous tension (POST) stocké dans la ROM. POST vérifie le sous-système CPU. Il teste le processeur, la DRAM et la partie du périphérique flash qui constitue le système de fichiers flash.  
  
**Étape 2:** Le commutateur exécute ensuite le bootloader. Le chargeur de démarrage (boot loader) est un petit programme stocké dans la ROM qui est exécuté immédiatement après la fin de POST.  
  
**Étape 3:** Le boot loader effectue une initialisation de bas niveau du CPU. Il initialise les registres du processeur qui contrôlent l'emplacement auquel la mémoire physique est mappée, la quantité de mémoire et sa vitesse.  
  
**Étape 4:** Le boot loader initialise le système de fichiers flash sur la carte système.  
  
**Étape 5:** Finalement, le chargeur de démarrage localise et charge dans la mémoire une image par défaut du logiciel du système d'exploitation IOS et donne le contrôle du commutateur à l'IOS.

### 1.1.2 Commande boot system

Le commutateur tente de démarrer automatiquement en utilisant les informations de la variable d'environnement BOOT. Si cette variable n'est pas définie, le commutateur tente de charger et d'exécuter le premier fichier exécutable qu'il peut trouver. Sur les commutateurs de la série Catalyst 2960, le fichier image est normalement contenu dans un répertoire portant le même nom que le fichier image (à l'exclusion de l'extension de fichier .bin).

Le système d'exploitation IOS initialise ensuite les interfaces à l'aide des commandes Cisco IOS figurant dans le fichier de configuration initiale. Le fichier startup-config est appelé **config.text** et se trouve en flash.

Dans l'exemple, la variable d'environnement BOOT est définie à l'aide de la commande de mode de configuration globale **boot system**. Notez que l'IOS se trouve dans un dossier distinct et que le chemin d'accès au dossier est spécifié. Utilisez la commande **show boot** pour voir sur quoi le fichier de démarrage IOS actuel est réglé.

```
S1(config)# boot system flash:/c2960-lanbasek9-mz.150-2.SE/c2960-lanbasek9-mz.150-2.SE.bin
```

Le tableau définit chaque partie de la commande **boot system**.

|Commande|Définition|
|---|---|
|**boot system**|La commande principale|
|**flash:**|Périphérique de stockage|
|**c2960-lanbasek9-mz.150-2.SE/**|Le chemin d'accès au système de fichiers|
|**c2960-lanbasek9-mz.150-2.SE.bin**|Le nom du fichier IOS|

### 1.1.3 Indicateurs LED de commutation

Les commutateurs Cisco Catalyst ont plusieurs témoins lumineux LED. Vous pouvez utiliser les LED du commutateur pour surveiller rapidement l'activité et les performances du commutateur. Les commutateurs de différents modèles et ensembles de fonctionnalités auront différentes LED et leur emplacement sur le panneau avant de l'interrupteur peut également varier.

La figure montre les voyants du commutateur et le bouton Mode d'un commutateur Cisco Catalyst 2960.

La figure montre les voyants LED, le bouton de mode et les ports situés sur le côté avant gauche d'un commutateur. Les voyants LED numérotés de 1 à 6 de haut en bas sont: SYST, RPS, STAT, DUPLX, SPEED et PoE. Sous les voyants LED et étiqueté 7 dans la figure se trouve le bouton de mode. Au-dessus des ports de commutation et étiquetés 8 dans la figure sont des LEDs de port.

![asset.description](https://contenthub.netacad.com/asset/netacad-media/media/c9567450-1c27-11ea-8212-a1efdf0f83be/assets/images/c9569b61-1c27-11ea-af09-3b2e6521927c.jpg)![asset.description](https://contenthub.netacad.com/asset/netacad-media/media/c9567450-1c27-11ea-8212-a1efdf0f83be/assets/images/c956c270-1c27-11ea-af09-3b2e6521927c.jpg)

![](https://www.netacad.com/content/srwe/1.0/assets/zoom_in.svg)

Le bouton Mode (7 sur la figure) permet de basculer sur l'état du port, le duplex du port, la vitesse du port et, si pris en charge, l'état Power over Ethernet (PoE) des voyants de port (8 sur la figure).

Cliquez sur chaque bouton pour apprendre le but des indicateurs LED (1 à 6 dans la figure), et la signification de leurs couleurs:

1 SYST
**SYST LED**

Indique si le système reçoit de l'énergie et fonctionne correctement. Si la LED est éteinte, le système n'est pas alimenté. Si la LED est verte, le système fonctionne normalement. Si la LED est ambre, le système reçoit de l'énergie mais ne fonctionne pas correctement.

2 RPS
**RPS LED**

Indique l'état du SRP. Si la LED est éteinte, le système RPS est éteint ou n'est pas correctement connecté. Si la LED est verte, le système RPS est connecté et prêt à fournir l'alimentation de secours. Si la LED est verte et clignote, le système RPS est connecté mais n'est pas disponible parce qu'il alimente un autre périphérique. Si la LED est ambre, le RPS est en mode veille, ou en état de panne. Si la LED clignote en ambre, c'est que l'alimentation interne de l'interrupteur est défaillante et que le RPS fournit du courant.

3 STAT
**STAT LED**

Indique que le mode d'état du port est sélectionné lorsque le voyant (LED) est vert. Il s'agit du mode par défaut. Lorsque cette option est sélectionnée, les voyants de port affichent des couleurs avec des significations différentes. Si la LED est éteinte, il n'y a pas de liaison, ou le port a été administrativement fermé. Si la LED est verte, un lien est présent. Si la LED clignote en vert, il y a une activité et le port envoie ou reçoit des données. Si la LED alterne vert-ambre, il y a un défaut de liaison. Si la LED est ambre, le port est bloqué pour s'assurer que le domaine de redirection ne présente pas de bouclage et ne redirige pas de données (en général, les ports restent à cet état au cours des 30 premières secondes suivant leur activation). Si la LED clignote en ambre, le port est bloqué pour empêcher une boucle possible dans le domaine de transfert.

4 DUPLX
**DUPLX LED**

Indique que le mode duplex du port est sélectionné lorsque la LED est verte. Lorsque cette option est sélectionnée, les voyants de port éteints sont en mode semi-duplex. Si la LED de port est vert, le port est en mode duplex intégral.

5 SPEED
**SPEED LED**

Indique que le mode de vitesse du port est sélectionné. Lorsque cette option est sélectionnée, les voyants de port affichent des couleurs avec des significations différentes. Si la LED est verte et clignote, le port fonctionne à 10 Mbit/s. Si la LED est verte, le port fonctionne à 100 Mbit/s. Si la LED est verte et clignote, le port fonctionne à 1000 Mbit/s.

6 PoE
**PoE LED**

Si PoE est pris en charge, un voyant de mode PoE est présent. Si la LED est éteinte, cela indique que le mode PoE n'est pas sélectionné et qu'aucun des ports n'a été privé d'alimentation ou placé en état de panne. Si la LED clignote en ambre, le mode PoE n'est pas sélectionné, mais au moins un des ports a été privé d'alimentation ou a une panne PoE. Si la LED est verte, elle indique que le mode PoE est sélectionné et que les voyants de port affichent des couleurs avec des significations différentes. Si la LED du port est éteinte, le PoE est éteint. Si la LED du port est verte, le PoE est en fonction. Si la LED du port est en alternance vert-ambre, le PoE est refusé parce que l'alimentation de l'appareil alimenté dépassera la capacité du commutateur. Si la LED clignote en ambre, PoE est éteint en raison d'un défaut. Si la LED est ambre, le PoE pour le port a été désactivé


### 1.1.4 Récupération après une panne de système

Le chargeur de démarrage permet d'accéder au commutateur si le système d'exploitation ne peut être utilisé en raison de fichiers système manquants ou endommagés. Le chargeur de démarrage dispose d'une ligne de commande qui permet d'accéder aux fichiers stockés dans la mémoire flash.

Le chargeur de démarrage est accessible via une connexion à la console en suivant ces étapes :

**Étape 1**. Connectez un PC par un câble de console au port de console du commutateur. Configurez le logiciel d'émulation de terminal pour le connecter au commutateur.  
  
**Étape 2**. Débranchez le cordon d'alimentation du commutateur.  
  
**Étape 3**. Rebranchez le cordon d'alimentation au commutateur et, dans les 15 secondes qui suivent, appuyez sur le bouton **Mode** et maintenez-le enfoncé pendant que la LED du système clignote encore en vert.  
  
**Étape 4**. Continuez à appuyer sur le bouton **Mode** jusqu'à ce que le voyant lumineux du système devienne brièvement orange puis vert fixe ; puis relâchez le bouton **Mode**.  
  
**Étape 5**. L’invite **switch:** apparaît dans le logiciel d'émulation de terminal sur le PC.

Tapez **help** ou **?** à l'invite du chargeur de démarrage pour afficher la liste des commandes disponibles.

Par défaut, le commutateur tente de démarrer automatiquement en utilisant les informations de la variable d'environnement BOOT. Pour afficher le chemin d'accès de la variable d'environnement du commutateur, tapez la commande **set**. Ensuite, initialisez le système de fichiers flash à l'aide de la commande **flash_init** pour afficher les fichiers actuels en flash, comme indiqué dans la sortie.

```
switch: setBOOT=flash:/c2960-lanbasek9-mz.122-55.SE7/c2960-lanbasek9-mz.122-55.SE7.bin(output omitted)switch: flash_initInitializing Flash...flashfs[0]: 2 files, 1 directoriesflashfs[0]: 0 orphaned files, 0 orphaned directoriesflashfs[0]: Total bytes: 32514048flashfs[0]: Bytes used: 11838464flashfs[0]: Bytes available: 20675584flashfs[0]: flashfs fsck took 10 seconds....done Initializing Flash.
```

Une fois l'initialisation du flash est terminée, vous pouvez entrer la commande **dir flash:** pour visualiser les répertoires et les fichiers en flash, comme indiqué dans la sortie.

```
switch: dir flash:Directory of flash:/    2  -rwx  11834846  <date>               c2960-lanbasek9-mz.150-2.SE8.bin    3  -rwx  2072      <date>               multiple-fs
```

Entrez la commande **BOOT=flash** pour modifier le chemin de la variable d'environnement BOOT que le commutateur utilise pour charger le nouvel IOS en flash. Pour vérifier le nouveau chemin de la variable d'environnement BOOT, relancez la commande **set**. Enfin, pour charger le nouvel IOS tapez la commande **boot** sans aucun argument, comme indiqué dans la sortie.

```
switch: BOOT=flash:c2960-lanbasek9-mz.150-2.SE8.binswitch: setBOOT=flash:c2960-lanbasek9-mz.150-2.SE8.bin(output omitted)switch: boot
```

Les commandes du chargeur de démarrage prennent en charge l'initialisation du flash, le formatage du flash, l'installation d'un nouvel IOS, la modification de la variable d'environnement BOOT et la récupération des mots de passe perdus ou oubliés.

### 1.1.5 Accès à la gestion des commutateurs

Pour préparer un commutateur pour l'accès à la gestion à distance, le commutateur doit être configuré avec une adresse IP et un masque de sous-réseau. Gardez à l'esprit que pour gérer le commutateur à partir d'un réseau distant, le commutateur doit être configuré avec une passerelle par défaut. Ceci est très similaire à la configuration des informations d'adresse IP sur les périphériques hôtes. Dans la figure, l'interface virtuelle du commutateur (SVI) sur S1 doit recevoir une adresse IP. Le SVI est une interface virtuelle, pas un port physique sur le commutateur. Un câble de console est utilisé pour se connecter à un PC afin que le commutateur puisse être configuré initialement.


![[Pasted image 20250217183636.png]]



### 1.1.6 Exemple de configuration du commutateur SVI

Par défaut, le commutateur est configuré pour que sa gestion soit contrôlée par le VLAN 1. Tous les ports sont attribués à VLAN 1 par défaut. Pour des raisons de sécurité, il est considéré comme une bonne pratique d'utiliser un VLAN autre que le VLAN 1 pour la gestion du VLAN, tel que le VLAN 99 dans l'exemple.

Cliquez sur chaque bouton pour connaître les étapes à suivre pour configurer l'accès à la gestion des commutateurs.

Étape 1
**Configurer l'interface de gestion**

Depuis le mode de configuration de l'interface VLAN, une adresse IPv4 et un masque de sous-réseau sont appliqués au SVI de gestion du commutateur.

**Remarque:** Le SVI pour VLAN 99 n'apparaîtra pas comme "up/up" jusqu'à ce que le VLAN 99 soit créé et qu'un appareil soit connecté à un port de commutation associé au VLAN 99.

**Remarque:** Le commutateur peut avoir besoin d'être configuré pour IPv6. Par exemple, avant de pouvoir configurer l'adressage IPv6 sur un Cisco Catalyst 2960 fonctionnant sous IOS version 15.0, vous devrez entrer la commande de configuration globale **sdm prefer dual-ipv4-and-ipv6 default** et ensuite **reload** le commutateur.

|**Tâche**|**Commandes IOS**|
|---|---|
|Passer en mode de configuration globale.|S1# **configure terminal**|
|Passer en mode de configuration d'interface pour SVI.|S1(config)# **interface vlan 99**|
|Configurer l'adresse IPv4 de l'interface de gestion.|S1(config-if)# **ip address 172.17.99.11 255.255.255.0**|
|Configurer l'adresse IPv6 de l'interface de gestion.|S1(config-if)# **ipv6 address 2001:db8:acad:99::1/64**|
|Activer l'interface de gestion.|S1(config-if)# **no shutdown**|
|Repasser en mode d'exécution privilégié.|S1(config-if)# **end**|
|Enregistrer la configuration en cours dans la configuration de démarrage.|S1# **copy running-config startup-config**|
Étape 2
**Configurer la passerelle par défaut**

Le commutateur doit être configuré avec une passerelle par défaut s'il doit être géré à distance depuis des réseaux connectés indirectement.

**Remarque:** Comme il recevra les informations relatives à sa passerelle par défaut à partir d'un message publicitaire de routeur (RA), le commutateur ne nécessite pas de passerelle IPv6 par défaut.

|**Tâche**|**Commandes IOS**|
|---|---|
|Passer en mode de configuration globale.|S1# **configure terminal**|
|Configurer la passerelle par défaut pour le commutateur.|S1(config)# **ip default-gateway 172.17.99.1**|
|Repasser en mode d'exécution privilégié.|S1(config-if)# **end**|
|Enregistrer la configuration en cours dans la configuration de démarrage.|S1# **copy running-config startup-config**|
Étape 3
**Vérifier la configuration**

Les commandes **show ip interface brief** et **show ipv6 interface brief** sont utiles pour déterminer l'état des interfaces physiques et virtuelles. La sortie affichée confirme que l'interface VLAN 99 a été configurée avec une adresse IPv4 et IPv6.

**Remarque:** Une adresse IP appliquée au SVI sert uniquement à l'accès de gestion à distance au commutateur ; cela ne permet pas au commutateur d'acheminer des paquets de couche 3.

```
S1# show ip interface brief
Interface     IP-Address     OK? Method   Status    Protocol
Vlan99        172.17.99.11   YES manual   down      down
(output omitted)
S1# show ipv6 interface brief
Vlan99                 [down/down]
    FE80::C27B:BCFF:FEC4:A9C1
    2001:DB8:ACAD:99::11
(output omitted)
```

## 1.2 Configuration des ports de commutateur
### 1.2.1 Communications bidirectionnelles

Les ports d'un commutateur peuvent être configurés indépendamment pour différents besoins. Cette rubrique explique comment configurer les ports de commutateur, comment vérifier vos configurations, les erreurs courantes et comment dépanner les problèmes de configuration de commutateur.

Les communications bidirectionnelles simultanées augmentent la bande passante réelle, car les deux extrémités de la connexion transmettent et reçoivent simultanément des données. C'est ce qu'on appelle la communication bidirectionnelle et elle nécessite une microsegmentation. Un réseau local microsegmenté est créé lorsqu'un port de commutateur n'a qu'un seul appareil connecté et qu'il fonctionne en mode duplex intégral. Il n'y a pas de domaine de collision associé à un port de commutateur fonctionnant en mode duplex intégral.

Contrairement à la communication en duplex intégral, la communication en semi-duplex est unidirectionnelle. La communication en semi-duplex pose des problèmes de performance car les données ne peuvent circuler que dans un seul sens à la fois, ce qui entraîne souvent des collisions. Les connexions semi-duplex se retrouvent généralement sur des matériels plus anciens, tels que les concentrateurs (hubs). La communication duplex intégral a remplacé le semi-duplex dans la plupart des matériels.

La figure illustre la communication duplex intégral et semi-duplex.
![[Pasted image 20250217183906.png]]

L'Ethernet Gigabit et les cartes réseau de 10 Gb nécessitent des connexions duplex intégral (full-duplex) pour fonctionner. En mode duplex intégral, le circuit de détection de collision sur le NIC est désactivé. Le duplex intégral offre une efficacité de 100 % dans les deux sens (émission et réception). Il en résulte un doublement de l'utilisation potentielle de la largeur de bande indiquée.

### 1.2.2 Configuration des ports de commutateur au niveau de la couche physique

Les ports de commutation peuvent être configurés manuellement avec des paramètres de duplex et de vitesse spécifiques. Utilisez la commande de mode de configuration de l'interface **duplex** pour spécifier manuellement le mode duplex pour un port de commutateur. Utilisez la commande du mode de configuration de l'interface **speed** pour spécifier manuellement la vitesse. Par exemple, les deux commutateurs de la topologie devraient toujours fonctionner en duplex intégral à 100 Mbps.

![[Pasted image 20250217183934.png]]

Le tableau présente les commandes pour S1. Les mêmes commandes peuvent être appliquées à S2.

|**Tâche**|**Commandes IOS**|
|---|---|
|Passer en mode de configuration globale.|S1# **configure terminal**|
|Passer en mode de configuration d'interface.|S1(config)# **interface FastEthernet 0/1**|
|Configurer le mode bidirectionnel d'interface.|S1(config-if)# **duplex full**|
|Configurer la vitesse d'interface|S1(config-if)# **speed 100**|
|Repasser en mode d'exécution privilégié.|S1(config-if)# **end**|
|Enregistrer la configuration en cours dans la configuration de démarrage.|S1# **copy running-config startup-config**|

Le paramètre de bidirectionnalité et de vitesse d'un port de commutateur Cisco Catalyst 2960 ou 3560 est auto. Les ports 10/100/1000 fonctionnent en mode semi-duplex ou full-duplex lorsqu'ils sont réglés à 10 ou 100 Mbps et ne fonctionnent en mode full-duplex que lorsqu'il est réglé à 1000 Mbps (1 Gbps). L'auto-négociation est utile lorsque les paramètres de vitesse et de duplex de l'appareil qui se connecte au port sont inconnus ou peuvent changer. Lors de la connexion à des dispositifs connus tels que des serveurs, des postes de travail dédiés ou des dispositifs de réseau, la meilleure pratique consiste à régler manuellement les paramètres de vitesse et de duplex.

Lors du dépannage des problèmes de port de commutateur, il est important de vérifier les paramètres duplex et de vitesse.

**Remarque:** Des paramètres incorrects relatifs au mode duplex ou au débit peuvent entraîner des problèmes de connectivité. L'échec de l'auto-négociation crée des paramètres mal adaptés.

Tous les ports à fibre optique, tels que les ports 1000BASE-SX, ne fonctionnent qu'à une vitesse prédéfinie et sont toujours en duplex intégral.

### 1.2.3 Auto-MDIX

Jusqu'à récemment, certains types de câbles (droits ou croisés) étaient nécessaires pour le raccordement des appareils. Connexions commutateur à commutateur ou commutateur à routeur requises à l'aide de différents câbles Ethernet. L'utilisation de la fonction de croisement automatique des interfaces dépendantes du support (auto-MDIX) sur une interface élimine ce problème. Lorsque la fonction auto-MDIX est activée, l'interface détecte automatiquement le type de connexion de câble requis (droit ou croisé) et configure la connexion de manière appropriée. Pour la connexion aux commutateurs sans utiliser la fonctionnalité auto-MDIX, des câbles droits doivent être utilisés pour connecter des périphériques tels que des serveurs, des stations de travail ou des routeurs. Des câbles croisés doivent être utilisés pour se connecter à d'autres commutateurs ou à des répéteurs.

Lorsque la fonction auto-MDIX est activée, le type de câble utilisé n'a pas d'importance. L'interface s'adapte et fait en sorte d'assurer la communication. Sur les nouveaux commutateurs Cisco, la commande du mode de configuration de l'interface **mdix auto** active cette fonction. Lors de l'utilisation d'auto-MDIX sur une interface, la vitesse de l'interface et le duplex doivent être réglés sur **auto** alors que la fonction fonctionne correctement.

La commande d'activation de l'auto-MDIX est émise en mode de configuration de l'interface sur le commutateur comme indiqué:

```
S1(config-if)# mdix auto
```

**Remarque:** La fonction auto-MDIX est activée par défaut sur les commutateurs Catalyst 2960 et Catalyst 3560 mais n'est pas disponible sur les anciens commutateurs Catalyst 2950 et Catalyst 3550.

Pour examiner le paramètre Auto-MDIX pour une interface spécifique, utilisez la commande **show controllers ethernet-controller** avec le mot-clé **phy**. Pour limiter la sortie aux lignes référençant Auto-, utilisez le filtre **include Auto-MDIX**. Comme indiqué, la sortie indique On ou Off pour la fonction.

```
S1# show controllers ethernet-controller fa0/1 phy | include MDIXAuto-MDIX           :  On   [AdminState=1   Flags=0x00052248]
```

### 1.2.4 Commandes de vérification des commutateurs

Le tableau résume certaines des commandes de vérification des commutateurs les plus utiles.

|**Tâche**|**Commandes IOS**|
|---|---|
|Afficher l'état et la configuration des interfaces.|S1# **show interfaces** [_interface-id_]|
|Afficher la configuration initiale actuelle.|S1# **show startup-config**|
|Afficher la configuration courante.|S1# **show running-config**|
|Afficher les informations sur le système de fichiers Flash.|S1# **show flash**|
|Afficher l'état matériel et logiciel du système.|S1# **show version**|
|Afficher l'historique de la commande saisie.|S1# **show history**|
|Afficher les informations IP d'une interface.|S1# **show ip interface** [_interface-id_]<br><br>OU<br><br>S1# **show ipv6 interface** [_interface-id_]|
|Afficher la table d'adresses MAC.|S1# **show mac-address-table**<br><br>OU<br><br>S1# **show mac address-table**|
### 1.2.5 Vérification de la configuration du port du commutateur

La commande **show running-config** peut être utilisée pour vérifier que le commutateur a été correctement configuré. À partir de la sortie abrégée de l'échantillon sur S1, quelques informations importantes sont présentées dans la figure:

- L'interface Fast Ethernet 0/18 est configurée avec le VLAN de gestion 99
- Le VLAN 99 est configuré avec une adresse IPv4 de 172.17.99.11 255.255.255.255.0
- La passerelle par défaut est fixée à 172.17.99.1

```
S1# show running-configBuilding configuration...Current configuration : 1466 bytes!interface FastEthernet0/18switchport access vlan 99switchport mode access!(output omitted)!interface Vlan99ip address 172.17.99.11 255.255.255.0ipv6 address 2001:DB8:ACAD:99::1/64!ip default-gateway 172.17.99.1
```

La commande **show interfaces** est une autre commande couramment utilisée, qui affiche des informations d'état et de statistiques sur les interfaces réseau du commutateur. La commande **show interfaces** est fréquemment utilisée lors de la configuration et de la surveillance des périphériques réseau.

La première ligne de la sortie de la commande **show interfaces fastEthernet 0/18** indique que l'interface FastEthernet 0/18 est up/up, ce qui signifie qu'elle est opérationnelle. Plus bas, la sortie montre que le duplex est complet et que la vitesse est de 100 Mbps.

```
S1# show interfaces fastEthernet 0/18FastEthernet0/18 is up, line protocol is up (connected)  Hardware is Fast Ethernet, address is 0025.83e6.9092 (bia 0025.83e6.9092)  MTU 1500 bytes, BW 100000 Kbit/sec, DLY 100 usec,     reliability 255/255, txload 1/255, rxload 1/255  Encapsulation ARPA, loopback not set  Keepalive set (10 sec)  Full-duplex, 100Mb/s, media type is 10/100BaseTX
```

### 1.2.6 Problèmes de la couche d'accès au réseau

La sortie de la commande **show interfaces** est utile pour détecter les problèmes de supports courants. L'une des parties les plus importantes de cette sortie est l'affichage de l'état de la ligne et du protocole de liaison de données, comme le montre l'exemple.

```
S1# show interfaces fastEthernet 0/18FastEthernet0/18 is up, line protocol is up (connected)Hardware is Fast Ethernet, address is 0025.83e6.9092 (bia 0025.83e6.9092)MTU 1500 bytes, BW 100000 Kbit/sec, DLY 100 usec,
```

Le premier paramètre (FastEthernet0/1 is up) fait référence à la couche matérielle et indique si l’interface reçoit un signal de détection de porteuse. Le second paramètre (line protocol is up) fait référence à la couche de liaison de données et indique si les messages de test d'activité du protocole de couche liaison de données sont en cours de réception.

Sur la base des résultats de la commande **show interfaces**, les problèmes éventuels peuvent être résolus comme suit :

- Si l’interface est active et que le protocole de ligne est désactivé, un problème existe. Il peut y avoir une incompatibilité de type d'encapsulation, l'interface à l'autre extrémité peut être désactivée ou il peut y avoir un problème matériel.
- Si le protocole de ligne et l'interface sont tous les deux en panne, un câble n'est pas connecté ou un autre problème d'interface existe. Par exemple, dans une connexion dos à dos, l'autre extrémité de la connexion peut être administrativement en panne.
- la commande* Si l'interface est administrativement hors service, elle a été désactivée manuellement (la commande **shutdown** a été émise) dans la configuration active.

La sortie de la commande **show interfaces** affiche les compteurs et les statistiques pour l'interface FastEtherNet0/18, comme indiqué dans l'exemple.

```
S1# show interfaces fastEthernet 0/18
FastEthernet0/18 is up, line protocol is up (connected)  Hardware is Fast Ethernet, address is 0025.83e6.9092 (bia 0025.83e6.9092)
MTU 1500 bytes, BW 100000 Kbit/sec, DLY 100 usec,     reliability 255/255, txload 1/255, rxload 1/255  
Encapsulation ARPA, loopback not set  
Keepalive set (10 sec)  
Full-duplex, 100Mb/s, media type is 10/100BaseTX  
input flow-control is off, output flow-control is unsupported  
ARP type: ARPA, ARP Timeout 04:00:00  
Last input never, output 00:00:01, output hang never  
Last clearing of "show interface" counters never  
Input queue: 0/75/0/0 (size/max/drops/flushes); Total output drops: 0  
Queueing strategy: fifo  
Output queue: 0/40 (size/max)  
5 minute input rate 0 bits/sec, 0 packets/sec  
5 minute output rate 0 bits/sec, 0 packets/sec     
2295197 packets input, 305539992 bytes, 0 no buffer     
Received 1925500 broadcasts (74 multicasts)     
0 runts, 0 giants, 0 throttles     
3 input errors, 3 CRC, 0 frame, 0 overrun, 0 ignored    
0 watchdog, 74 multicast, 0 pause input     
0 input packets with dribble condition detected     
3594664 packets output, 436549843 bytes, 0 underruns     
8 output errors, 0 collisions, 10 interface resets     
0 unknown protocol drops     
0 babbles, 235 late collision, 0 deferred
```

Certaines erreurs de support ne sont pas assez graves pour provoquer la défaillance du circuit, mais causent des problèmes de performances réseau. Le tableau explique certaines de ces erreurs courantes qui peuvent être détectées à l'aide de la commande **show interfaces**.

| **Type d'erreur**              | **Description**                                                                                                                                                                                   |
| ------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Erreurs en entrée**          | Nombre total d'erreurs. Il comprend les runts, les géants, pas de tampon, CRC, trame, dépassement et comptages ignorés.                                                                           |
| **Trames incomplètes (Runts)** | Les paquets qui sont rejetés parce qu'ils sont plus petits que la taille minimale du paquet pour le support. Par exemple, tout paquet Ethernet de moins de 64 octets est considéré comme un runt. |
| **Trames géantes**             | Les paquets qui sont rejetés parce qu'ils dépassent la taille maximale du paquet pour le support. Par exemple, tout paquet Ethernet supérieur à 1 518 octets est considéré comme un géant.        |
| **CRC**                        | Des erreurs CRC sont générées lorsque la somme de contrôle calculée n'est pas la même que la somme de contrôle reçue.                                                                             |
| **Erreurs en sortie**          | Somme de toutes les erreurs qui ont empêché la transmission finale des datagrammes de l'interface en cours d'examen.                                                                              |
| **Collisions**                 | Nombre de messages retransmis à cause d'une collision Ethernet.                                                                                                                                   |
| **Collisions tardives**        | Une collision qui se produit après que 512 bits de la trame aient été transmis.                                                                                                                   |
### 1.2.7 Erreurs d'entrée et de sortie de l'interface

Les "erreurs de saisie" sont la somme de toutes les erreurs dans les datagrammes qui ont été reçus sur l'interface examinée. Cela inclut les runts, les géants, le CRC, l'absence de tampon, les trames, les dépassements et les comptes ignorés. Les erreurs de saisie signalées par la commande **show interfaces** sont notamment les suivantes :

- **Trames incomplètes(Runt Frames)** - Les trames Ethernet qui sont plus courtes que la longueur minimale autorisée de 64 octets sont appelées runts. Le mauvais fonctionnement des NIC est la cause habituelle d'un nombre excessif de trames incomplètes, mais il peut aussi être causé par des collisions.
- **Géants** - Les trames Ethernet qui dépassent la taille maximale autorisée sont appelées géants.
- **Erreurs CRC** - Sur les interfaces Ethernet et série, les erreurs CRC indiquent généralement une erreur de support ou de câble. Parmi les causes les plus courantes, on compte les interférences électriques, des connexions lâches ou endommagées, ou l'utilisation d'un câble incorrect. Si vous constatez un nombre élevé d'erreurs CRC, la liaison présente un bruit trop important et vous devriez vérifier le câble. Vous devez également rechercher les sources de bruit et les éliminer.

Les « erreurs en sortie » sont la somme de toutes les erreurs ayant empêché la transmission finale des datagrammes vers l'interface examinée. Les erreurs de sortie signalées par la commande **show interfaces** sont notamment les suivantes :

- **Collisions** - Les collisions dans les opérations en semi-duplex sont normales. Cependant, vous ne devez pas observer de collisions sur une interface configurée pour la communication bidirectionnelle simultanée.
- **Collisions tardives** - Une collision tardive est une collision qui se produit après que 512 bits de la trame ont été transmis. Les longueurs de câble excessives sont la cause la plus fréquente de collisions tardives. Une autre cause fréquente est la mauvaise configuration des duplex. Par exemple, une extrémité d'une connexion peut être configurée pour le duplex intégral et l'autre pour le semi-duplex. Vous verrez des collisions tardives sur l'interface configurée pour le semi-duplex. Dans ce cas, vous devez configurer le même paramètre duplex aux deux extrémités. Un réseau correctement conçu et configuré ne devrait jamais avoir de collisions tardives.

### 1.2.8 Dépannage des problèmes de la couche d'accès au réseau

La plupart des problèmes qui affectent un réseau commuté sont rencontrés lors de l'implémentation d'origine. Théoriquement, après son installation, un réseau continue à fonctionner sans problèmes. Toutefois, le câblage est endommagé, les configurations changent et de nouveaux périphériques sont connectés au commutateur qui nécessitent des modifications de configuration du commutateur. Une maintenance continue et un dépannage de l'infrastructure réseau sont nécessaires.

Pour dépanner les scénarios impliquant une absence de connexion, ou une mauvaise connexion, entre un commutateur et un autre appareil, suivez le processus général indiqué dans la figure.

![[Pasted image 20250217184315.png]]

Utilisez la commande **show interfaces** pour vérifier l'état de l'interface.

Si l'interface est désactivée:

- Vérifiez que vous utilisez les bons câbles. De plus, vérifiez que le câble et les connecteurs ne sont pas endommagés. Si vous soupçonnez un câble défectueux ou incorrect, remplacez le câble.
- Si l'interface est toujours en panne, le problème peut être dû à un décalage dans le réglage de la vitesse. La vitesse d'une interface est généralement auto-négociée ; par conséquent, même si elle est appliquée manuellement à une interface, l'interface de connexion devrait s'auto-négocier en conséquence. Si un décalage de vitesse se produit à cause d'une mauvaise configuration, ou d'un problème matériel ou logiciel, cela peut entraîner une panne de l'interface. Si vous suspectez un problème, paramétrez manuellement une vitesse identique aux deux extrémités de la connexion.

Si l'interface est activée, mais que les problèmes de connectivité sont toujours présents:

- En utilisant la commande **show interfaces**, vérifiez s'il y a des indications de bruit excessif. Les indications peuvent inclure une augmentation des compteurs pour les runts, les géants et les erreurs CRC. S'il y a un bruit excessif, d'abord trouver et supprimer la source du bruit, si possible. Vérifiez également que le câble ne dépasse pas la longueur maximale du câble et vérifiez le type de câble utilisé.

- Si le bruit n'est pas un problème, vérifiez les collisions excessives. S'il y a des collisions ou des collisions tardives, vérifiez les paramètres duplex aux deux extrémités de la connexion. Tout comme le paramètre de vitesse, le paramètre duplex est généralement négocié automatiquement. S'il semble y avoir un décalage entre les duplex, réglez manuellement le duplex sur plein aux deux extrémités de la connexion.

## 1.3 Accès à distance sécurisé

### 1.3.1 Opération Telnet

Il se peut que vous n'ayez pas toujours un accès direct à votre commutateur lorsque vous devez le configurer. Vous devez pouvoir y accéder à distance et il est impératif que votre accès soit sécurisé. Cette rubrique explique comment configurer Secure Shell (SSH) pour l'accès à distance. Une activité de Packet Tracer vous donne l'occasion de l'essayer vous-même.

Telnet utilise le port TCP 23. Il s'agit d'un ancien protocole qui utilise la transmission non sécurisée en texte clair à la fois de l'authentification de la connexion (nom d'utilisateur et mot de passe) et des données transmises entre les dispositifs de communication. Un acteur de menace peut surveiller les paquets à l'aide de Wireshark. Par exemple, dans la figure, l'acteur de menace a capturé le nom d'utilisateur **admin** et le mot de passe **ccna** d'une session Telnet
![[Pasted image 20250217184430.png]]

### 1.3.2 Opération SSH

Secure Shell (SSH) est un protocole sécurisé qui utilise le port TCP 22. Il fournit une connexion de gestion sécurisée (cryptée) à un appareil distant. SSH doit remplacer Telnet pour les connexions de gestion. SSH assure la sécurité des connexions à distance en fournissant un cryptage fort lorsqu'un dispositif est authentifié (nom d'utilisateur et mot de passe) et également pour les données transmises entre les dispositifs communicants.

Par exemple, la figure montre une capture Wireshark d'une session SSH. L'acteur de menace peut suivre la session à l'aide de l'adresse IP du périphérique administrateur. Cependant, contrairement à Telnet, avec SSH, le nom d'utilisateur et le mot de passe sont cryptés.

capture d'écran d'une session SSH par WireShark montrant que le nom d'utilisateur et le mot de passe sont cryptés

![asset.description](https://contenthub.netacad.com/asset/netacad-media/media/c964a520-1c27-11ea-8212-a1efdf0f83be/assets/images/c964a522-1c27-11ea-af09-3b2e6521927c.png)

### 1.3.3 Vérifiez que le commutateur prend en charge SSH

Pour activer le SSH sur un commutateur Catalyst 2960, le commutateur doit utiliser une version du logiciel IOS comprenant des fonctions et des capacités cryptographiques (cryptées). Utilisez la commande **show version** du commutateur pour voir quel IOS le commutateur est en cours d'exécution. Un nom de fichier IOS qui inclut la combinaison "k9" prend en charge les fonctions et capacités cryptographiques (chiffrées). L'exemple montre le résultat de la commande **show version**.

```
S1# show versionCisco IOS Software, C2960 Software (C2960-LANBASEK9-M), Version 15.0(2)SE7, RELEASE SOFTWARE (fc1)
```

### 1.3.4 Configuration de SSH

Avant de configurer SSH, le commutateur doit être configuré au minimum avec un nom d'hôte unique et les paramètres de connectivité réseau corrects.

**Étape 1**

**Vérifier le support SSH.**

Utilisez la commande **show ip ssh** pour vérifier que le commutateur supporte SSH. Si le commutateur n'exécute pas un IOS qui prend en charge les fonctions cryptographiques, cette commande n'est pas reconnue.

```
S1# show ip ssh
```

**Étape 2**

**Configurer le domaine IP.**

Configurez le nom de domaine IP du réseau à l'aide de la commande de mode de configuration globale **ip domain-name** _domain-name_. Dans la figure, la valeur _domaine-name_ est **[cisco.com](http://cisco.com/)**.

```
S1(config)# ip domain-name cisco.com
```

**Étape 3**

**Générer des paires de clés RSA.**

Toutes les versions de l'IOS ne correspondent pas à la version 2 de SSH par défaut, et la version 1 de SSH présente des failles de sécurité connues. Pour configurer la version 2 de SSH, lancez la commande de mode de configuration globale **ip ssh version 2**. La génération d'une paire de clés RSA active automatiquement SSH. Utilisez la commande du mode de configuration globale **crypto key generate rsa** pour activer le serveur SSH sur le commutateur et générer une paire de clés RSA. Lors de la génération de clés RSA, l'administrateur est invité à entrer une longueur de module. La configuration de l'échantillon dans la figure utilise une taille de module de 1 024 bits. Une longueur de module plus importante est plus sûre, mais il faut plus de temps pour la générer et l'utiliser.

**Remarque:** Pour supprimer la paire de clés RSA, utilisez la commande du mode de configuration globale **crypto key zeroize rsa**. Après la suppression de la paire de clés RSA, le serveur SSH est automatiquement désactivé.

```
S1(config)# crypto key generate rsa
How many bits in the modulus [512]: 1024
```

**Étape 4**

**Configurer l'authentification des utilisateurs.**

Le serveur SSH peut authentifier les utilisateurs localement ou à l'aide d'un serveur d'authentification. Pour utiliser la méthode d'authentification locale, créez une paire de nom d'utilisateur et de mot de passe à l'aide de la commande de configuration globale **username** _username_ **secret** _password_. Dans cet exemple, l'utilisateur admin se voit attribuer le mot de passe ccna.

```
S1(config)# nom d'utilisateur admin secret ccna
```

**Étape 5**

**Configurer les lignes de vty.**

Activez le protocole SSH sur les lignes vty en utilisant la commande de mode de configuration de la ligne **transport input ssh**. Le Catalyseur 2960 a des lignes de vty allant de 0 à 15. Cette configuration empêche les connexions non SSH (telles que Telnet) et limite le commutateur à accepter uniquement les connexions SSH. Utilisez la commande **line vty** de mode de configuration globale, puis la commande **login local** de mode de configuration de ligne pour exiger une authentification locale pour les connexions SSH à partir de la base de données locale des noms d'utilisateur.

```
S1(config)# line vty 0 15
S1(config-line)# transport input ssh
S1(config-line)# login local
S1(config-line)# exit
```

**Étape 6**

**Activer SSH version 2.**

Par défaut, SSH prend en charge les versions 1 et 2. Lorsque les deux versions sont supportées, cela est indiqué dans la sortie de **show ip ssh** comme supportant la version 2. Activez la version SSH à l'aide de la commande de configuration globale **ip ssh version 2**.

```
S1(config)# ip ssh version 2
```

### 1.3.5 Vérifier que SSH est opérationnel

Sur un PC, un client SSH, par exemple PuTTY, est utilisé pour établir une connexion à un serveur SSH. Par exemple, supposons que ce qui suit est configuré:

- SSH est activé sur le commutateur S1
- Interface VLAN 99 (SVI) avec l'adresse IPv4 172.17.99.11 sur le commutateur S1
- PC1 avec adresse IPv4 172.17.99.21

La figure montre les paramètres PuTTy du PC1 pour initier une connexion SSH à l'adresse IPv4 du VLAN SVI de S1.

![[Pasted image 20250217184646.png]]

Lorsqu'il est connecté, l'utilisateur est invité à entrer un nom d'utilisateur et un mot de passe comme indiqué dans l'exemple. En utilisant la configuration de l'exemple précédent, le nom d'utilisateur **admin** et le mot de passe **ccna** sont entrés. Après avoir saisi la combinaison adéquate, l'utilisateur est connecté via SSH à l'interface de ligne de commande du commutateur Cisco Catalyst 2960.

```
Login as: adminUsing keyboard-interactiveAuthentication.Password:S1> enablePassword:S1#
```

Pour afficher la version et les données de configuration de SSH sur l'appareil que vous avez configuré comme serveur SSH, utilisez la commande **show ip ssh**. Dans l'exemple, SSH version 2 est activé.

```
S1# show ip sshSSH Enabled - version 2.0Authentication timeout: 120 secs; Authentication retries: 3To check the SSH connections to the device, use the show ssh command as shown.S1# show ssh%No SSHv1 server connections running.Connection Version Mode Encryption  Hmac                State          Username0          2.0     IN   aes256-cbc  hmac-sha1    Session started       admin0          2.0     OUT  aes256-cbc  hmac-sha1    Session started       adminS1#
```

## 1.4 Configuration des paramètres de base d'un routeur
### 1.4.1 Configuration des paramètres de base du routeur

Jusqu'à présent, ce module n'a couvert que les commutateurs. Si vous souhaitez que les périphériques puissent envoyer et recevoir des données en dehors de votre réseau, vous devrez configurer les routeurs. Cette rubrique vous enseigne la configuration de base du routeur et fournit deux Vérificateurs de syntaxe et une activité Packet Tracer afin que vous puissiez pratiquer ces compétences.

Les routeurs et les commutateurs Cisco ont beaucoup de points communs. Ils prennent en charge le même système d'exploitation de modes, les mêmes structures de commandes et comptent de nombreuses commandes similaires. En outre, les deux périphériques présentent des étapes de configuration initiale similaires. Par exemple, les tâches de configuration suivantes doivent toujours être effectuées. Nommez le périphérique pour le distinguer des autres routeurs et configurez les mots de passe, comme indiqué dans l'exemple.

```
Router# configure terminalEnter configuration commands, one per line.  End with CNTL/Z.Router(config)# hostname R1R1(config)# enable secret classR1(config)# line console 0R1(config-line)# password ciscoR1(config-line)# loginR1(config-line)# exitR1(config)# line vty 0 4R1(config-line)# password ciscoR1(config-line)# loginR1(config-line)# exitR1(config)# service password-encryptionR1(config)#
```

Configurez une bannière pour fournir une notification légale d'accès non autorisé, comme le montre l'exemple.

```
R1(config)# banner motd #Authorized Access Only!#R1(config)#
```

Enregistrez les modifications sur un routeur, comme indiqué dans l'exemple.

```
R1# copy running-config startup-configDestination filename [startup-config]?Building configuration...[OK]
```

### 1.4.3 Topologie à double pile

Une fonction de distinction entre les commutateurs et les routeurs est le type d'interface pris en charge par chacun. Par exemple, les commutateurs de la couche 2 prennent en charge les LAN ; ils disposent donc de plusieurs ports FastEthernet ou Gigabit Ethernet. La topologie à double pile de la figure est utilisée pour démontrer la configuration des interfaces IPv4 et IPv6 du routeur.

![[Pasted image 20250217184746.png]]

### 1.4.4 Configurer les interfaces des routeurs

Les routeurs sont compatibles avec les LAN et les WAN et peuvent interconnecter différents types de réseaux; ils prennent donc en charge plusieurs types d'interfaces. Par exemple, les routeurs à services intégrés G2 disposent d'une ou de deux interfaces Gigabit Ethernet intégrées et de logements HWIC (carte d'interface WAN haut débit) pour héberger d'autres types d'interface réseau, y compris les interfaces série, DSL et câblées.

Pour être disponible, une interface doit être :

- **Configuré avec au moins une address IP** - Utilisez les commandes de configuration de l'interface **IP address** ip-address subnet-mask et **ipv6 address** ipv6-address/prefix.
- **Activé** - Par défaut, les interfaces LAN et WAN ne sont pas activées (**shutdown**). Pour activer une interface, elle doit être activée à l'aide de la commande "no shutdown" (pas d'arrêt). (Cela revient à mettre l'interface sous tension.) L'interface doit également être connectée à un autre périphérique (concentrateur, commutateur ou autre routeur) pour que la couche physique soit active.
- **Description** - En option, l'interface peut également être configurée avec une courte description de 240 caractères maximum. Il est recommandé de configurer une description sur chaque interface. Sur les réseaux de production, les avantages des descriptions d'interface sont rapidement réalisés car elles sont utiles pour le dépannage et pour identifier une connexion et des coordonnées de tiers.

L'exemple suivant montre la configuration des interfaces sur R1.

```
R1(config)# interface gigabitethernet 0/0/0R1(config-if)# ip address 192.168.10.1 255.255.255.0R1(config-if)# ipv6 address 2001:db8:acad:1::1/64R1(config-if)# description Link to LAN 1R1(config-if)# no shutdownR1(config-if)# exitR1(config)# interface gigabitethernet 0/0/1R1(config-if)# ip address 192.168.11.1 255.255.255.0R1(config-if)# ipv6 address 2001:db8:acad:2::1/64R1(config-if)# description Link to LAN 2R1(config-if)# no shutdownR1(config-if)# exitR1(config)# interface serial 0/0/0R1(config-if)# ip address 209.165.200.225 255.255.255.252R1(config-if)# ipv6 address 2001:db8:acad:3::225/64R1(config-if)# description Link to R2R1(config-if)# no shutdownR1(config-if)# exitR1(config)#
```

### 1.4.6 IPv4 Loopback Interfaces

Une autre configuration courante des routeurs Cisco IOS consiste à activer une interface de bouclage.

L'interface de bouclage est une interface logique interne au routeur. Il n'est pas attribué à un port physique et ne peut jamais être connecté à un autre appareil. Elle est considérée comme une interface logicielle qui est automatiquement placée en état « up », tant que le routeur fonctionne.

L'interface de bouclage est utile en cas de test et de gestion d'un périphérique Cisco IOS, car elle garantit qu'au moins une interface est toujours disponible. Par exemple, elle peut être utilisée à des fins de test des processus de routage internes, par exemple, en émulant les réseaux se trouvant derrière le routeur.

Les interfaces de bouclage sont également couramment utilisées dans les environnements de travaux pratiques pour créer des interfaces supplémentaires. Par exemple, vous pouvez créer plusieurs interfaces de bouclage sur un routeur pour simuler davantage de réseaux à des fins de pratique de configuration et de test. Dans ce programme, nous utilisons souvent une interface de bouclage pour simuler un lien vers Internet.

L'activation et l'attribution d'une adresse de bouclage sont simples :

```
Router(config)# interface loopback number 
```

```
Router(config-if)# ip address ip-address subnet-mask 
```

Plusieurs interfaces de bouclage peuvent être activées sur un routeur. L'adresse IPv4 de chaque interface de bouclage doit être unique et inutilisée par toute autre interface, comme le montre l'exemple de configuration de l'interface de bouclage 0 sur R1.

```
R1(config)# interface loopback 0R1(config-if)# ip address 10.0.0.1 255.255.255.0R1(config-if)# exitR1(config)#%LINEPROTO-5-UPDOWN: Line protocol on Interface Loopback0, changed state to up
```

## 1.5 Vérification des réseaux directement connectés
### 1.5.1 Commandes de vérification des interfaces

Il ne sert à rien de configurer votre routeur si vous ne vérifiez pas la configuration et la connectivité. Cette rubrique couvre les commandes à utiliser pour vérifier les réseaux directement connectés. Il comprend deux vérificateurs de syntaxe et un packet tracer.

Il existe plusieurs commandes **show** permettant de vérifier le fonctionnement et la configuration d'une interface. La topologie de la figure est utilisée pour démontrer la vérification des paramètres de l'interface du routeur.
![[Pasted image 20250217184840.png]]

Les commandes suivantes sont particulièrement utiles pour identifier rapidement l'état d'une interface :

- **show ip interface brief** et **show ipv6 interface brief** - Celles-ci affichent un résumé pour toutes les interfaces, y compris l'adresse IPv4 ou IPv6 de l'interface et l'état opérationnel actuel.
- **show running-config interface** _interface-id_ - Ceci affiche les commandes appliquées à l'interface spécifiée.
- **show ip route** et **show ipv6 route** - Celles-ci affichent le contenu de la table de routage IPv4 ou IPv6 stocké dans la mémoire vive. Dans Cisco IOS 15, les interfaces actives doivent apparaître dans la table de routage avec deux entrées connexes identifiées par le code "**C**" (Connecté) ou "**L**" (Local). Dans les versions précédentes de l'IOS, une seule entrée avec le code "**C**" apparaissait.

### 1.5.2 Vérification de l'état de l'interface

La sortie des commandes **show ip interface brief** et **show ipv6 interface brief** peut être utilisée pour révéler rapidement l'état de toutes les interfaces sur le routeur. Vous pouvez vérifier que les interfaces sont actives et opérationnelles comme indiqué par l'état "up" et le protocole "up", comme le montre l'exemple. Un résultat différent révèle un problème de configuration ou de câblage.

```
R1# show ip interface briefInterface              IP-Address      OK? Method Status                ProtocolGigabitEthernet0/0/0   192.168.10.1    YES manual up                    upGigabitEthernet0/0/1   192.168.11.1    YES manual up                    upSerial0/1/0            209.165.200.225 YES manual up                    upSerial0/1/1            unassigned      YES unset  administratively down downR1# show ipv6 interface briefGigabitEthernet0/0/0   [up/up]    FE80::7279:B3FF:FE92:3130    2001:DB8:ACAD:1::1GigabitEthernet0/0/1   [up/up]    FE80::7279:B3FF:FE92:3131    2001:DB8:ACAD:2::1Serial0/1/0            [up/up]    FE80::7279:B3FF:FE92:3130    2001:DB8:ACAD:3::1Serial0/1/1            [down/down]     Unassigned
```

### 1.5.3 Vérifier les adresses locales et multidiffusion des liens IPv6

La sortie de la commande **show ipv6 interface brief** affiche deux adresses IPv6 configurées par interface. L'une des adresses est l'adresse de monodiffusion globale IPv6 qui a été saisie manuellement. L'autre adresse, qui commence par FE80, est l'adresse de monodiffusion link-local pour l'interface. Une adresse link-local est automatiquement ajoutée à une interface chaque fois qu'une adresse de monodiffusion globale est attribuée. Une interface réseau IPv6 est requise pour avoir une adresse link-local, mais elle n'est pas nécessaire pour une adresse de monodiffusion globale.

La commande **show ipv6 interface gigabitethernet 0/0/0** affiche l'état de l'interface et toutes les adresses IPv6 appartenant à l'interface. Avec l'adresse locale du lien et l'adresse globale de monodiffusion, la sortie comprend les adresses de multidiffusion attribuées à l'interface, commençant par le préfixe FF02, comme le montre l'exemple.

```
R1# show ipv6 interface gigabitethernet 0/0/0
GigabitEthernet0/0/0 is up, line protocol is up  IPv6 is enabled, link-local address is FE80::7279:B3FF:FE92:3130  No Virtual link-local address(es):  Global unicast address(es):    2001:DB8:ACAD:1::1, subnet is 2001:DB8:ACAD:1::/64  Joined group address(es):    FF02::1    FF02::1:FF00:1    FF02::1:FF92:3130  MTU is 1500 bytes  ICMP error messages limited to one every 100 milliseconds  ICMP redirects are enabled  ICMP unreachables are sent  ND DAD is enabled, number of DAD attempts: 1  ND reachable time is 30000 milliseconds (using 30000)  ND advertised reachable time is 0 (unspecified)  ND advertised retransmit interval is 0 (unspecified)  ND router advertisements are sent every 200 seconds  ND router advertisements live for 1800 seconds  ND advertised default router preference is Medium
```

### 1.5.4 Vérification de la configuration d'interface

La sortie de la commande **show running-config interface** affiche les commandes actuelles appliquées à l'interface spécifiée, comme indiqué.

```
R1 show running-config interface gigabitethernet 0/0/0Building configuration...Current configuration : 158 bytes!interface GigabitEthernet0/0/0    description Link to LAN 1    ip address 192.168.10.1 255.255.255.0    negotiation auto    ipv6 address 2001:DB8:ACAD:1::1/64endR1#
```

Les deux commandes suivantes permettent de recueillir des informations plus détaillées sur l'interface:

- **show interfaces** - Affiche les informations sur les interfaces et le nombre de flux de paquets pour toutes les interfaces de l'appareil.
- **show ip interface** et **show ipv6 interface** - Affiche les informations relatives à IPv4 et IPv6 pour toutes les interfaces d'un routeur.

### 1.5.5 Vérification des routes

La sortie des commandes **show ip route** et **show ipv6 route** révèle les trois entrées réseau directement connectées et les trois entrées de l'interface de routage hôte local, comme indiqué dans l'exemple. Une route d'hôte local a une distance administrative de 0. Elle dispose également d'un masque /32 pour IPv4 et d'un masque /128 pour IPv6. La route hôte locale concerne les routes sur le routeur qui possède l'adresse IP. Elle autorise le routeur à traiter les paquets destinés à cette adresse IP.

```
R1# show ip route
Codes: L - local, C - connected, S - static, R - RIP, M - mobile, B - BGP      Gateway of last resort is not set      192.168.10.0/24 is variably subnetted, 2 subnets, 2 masksC        192.168.10.0/24 is directly connected, GigabitEthernet0/0/0L        192.168.10.1/32 is directly connected, GigabitEthernet0/0/0      192.168.11.0/24 is variably subnetted, 2 subnets, 2 masksC        192.168.11.0/24 is directly connected, GigabitEthernet0/0/1L        192.168.11.1/32 is directly connected, GigabitEthernet0/0/1      209.165.200.0/24 is variably subnetted, 2 subnets, 2 masksC        209.165.200.224/30 is directly connected, Serial0/1/0L        209.165.200.225/32 is directly connected, Serial0/1/0R1# show ipv6 routeIPv6 Routing Table - default - 7 entriesCodes: C - Connected, L - Local, S - Static, U - Per-user Static route      C   2001:DB8:ACAD:1::/64 [0/0]     via GigabitEthernet0/0/0, directly connectedL   2001:DB8:ACAD:1::1/128 [0/0]     via GigabitEthernet0/0/0, receiveC   2001:DB8:ACAD:2::/64 [0/0]     via GigabitEthernet0/0/1, directly connectedL   2001:DB8:ACAD:2::1/128 [0/0]     via GigabitEthernet0/0/1, receiveC   2001:DB8:ACAD:3::/64 [0/0]     via Serial0/1/0, directly connectedL   2001:DB8:ACAD:3::1/128 [0/0]     via Serial0/1/0, receiveL   FF00::/8 [0/0]     via Null0, receiveR1#
```

Un ‘**C**’ à côté d'une route dans le tableau de routage indique qu'il s'agit d'un réseau directement connecté. Lorsque l'interface du routeur est configurée avec une adresse de monodiffusion globale et est dans l'état "up/up", le préfixe IPv6 et la longueur du préfixe sont ajoutés à la table de routage IPv6 en tant que route connectée.

L'adresse de monodiffusion globale IPv6 appliquée à l'interface est également installée dans la table de routage en tant que route locale. Le préfixe de la route locale est /128. Des routes locales sont utilisées par la table de routage pour traiter efficacement les paquets avec l'adresse d'interface du routeur en tant que destination.

La commande **ping** pour IPv6 est identique à la commande utilisée avec IPv4, sauf qu'une adresse IPv6 est utilisée. Comme le montre l'exemple, la commande **ping** est utilisée pour vérifier la connectivité de la couche 3 entre R1 et PC1.

```
R1# ping 2001:db8:acad:1::10Type escape sequence to abort.Sending 5, 100-byte ICMP Echos to 2001:DB8:ACAD:1::10, timeout is 2 seconds:!!!!!Success rate is 100 percent (5/5), round-trip min/avg/max = 1/1/1 ms
```

### 1.5.6 Filtrage des résultats de commande show

Les commandes qui génèrent plusieurs écrans de sortie sont, par défaut, mises en pause après 24 lignes. À la fin de cette interruption, le texte --More-- s'affiche. Appuyez sur **Enter** pour afficher la ligne suivante et appuyez sur la touche Espace pour afficher la série de lignes suivante. Utilisez la commande **terminal length** pour indiquer le nombre de lignes à afficher. La valeur 0 (zéro) empêche le routeur de s'arrêter entre les écrans de résultat.

Une autre fonctionnalité très utile qui améliore l'expérience de l'utilisateur dans le CLI est le filtrage des sorties **show**. Les commandes de filtrage permettent d'afficher des sections de résultat spécifiques. Pour activer la commande de filtrage, tapez le symbole (**|**) après la commande **show** , puis saisissez un paramètre de filtrage et une expression de filtrage.

Il existe quatre paramètres de filtrage qui peuvent être configurés après le pipe.

**section**

Montre la section entière qui commence par l'expression de filtrage, comme dans l'exemple.

```
R1# show running-config | section line vty
line vty 0 4
 password 7 110A1016141D
 login
 transport input all
```

**include**

Comprend toutes les lignes de sortie qui correspondent à l'expression de filtrage, comme indiqué dans l'exemple.

```
R1# show ip interface brief
Interface              IP-Address      OK? Method Status                Protocol
GigabitEthernet0/0/0   192.168.10.1    YES manual up                    up
GigabitEthernet0/0/1   192.168.11.1    YES manual up                    up
Serial0/1/0            209.165.200.225 YES manual up                    up
Serial0/1/1            unassigned      NO  unset  down                  down
R1#
R1# show ip interface brief | include up
GigabitEthernet0/0/0   192.168.10.1    YES manual up                    up
GigabitEthernet0/0/1   192.168.11.1    YES manual up                    up
Serial0/1/0            209.165.200.225 YES manual up                    up
```


**exclude**

Exclut toutes les lignes de sortie qui correspondent à l'expression de filtrage, comme indiqué dans l'exemple.

```
R1# show ip interface brief
Interface              IP-Address      OK? Method Status                Protocol
GigabitEthernet0/0/0   192.168.10.1    YES manual up                    up
GigabitEthernet0/0/1   192.168.11.1    YES manual up                    up
Serial0/1/0            209.165.200.225 YES manual up                    up
Serial0/1/1            unassigned      NO  unset  down                  down
R1#
R1# show ip interface brief | exclude unassigned
Interface              IP-Address      OK? Method Status                Protocol
GigabitEthernet0/0/0   192.168.10.1    YES manual up                    up
GigabitEthernet0/0/1   192.168.11.1    YES manual up                    up
Serial0/1/0            209.165.200.225 YES manual up                    up
```

**begin**

Affiche toutes les lignes de sortie à partir d'un certain point, en commençant par la ligne qui correspond à l'expression de filtrage, comme dans l'exemple.

```
R1# show ip route | begin Gateway
Gateway of last resort is not set
      192.168.10.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.10.0/24 is directly connected, GigabitEthernet0/0/0
L        192.168.10.1/32 is directly connected, GigabitEthernet0/0/0
      192.168.11.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.11.0/24 is directly connected, GigabitEthernet0/0/1
L        192.168.11.1/32 is directly connected, GigabitEthernet0/0/1
      209.165.200.0/24 is variably subnetted, 2 subnets, 2 masks
C        209.165.200.224/30 is directly connected, Serial0/1/0
L        209.165.200.225/32 is directly connected, Serial0/1/0
```

**Remarque:** les filtres de résultat peuvent être utilisés en combinaison avec toute commande **show**.

### 1.5.8 Fonction d'historique de commande

La fonction d'historique des commandes est utile car elle stocke temporairement la liste des commandes exécutées à rappeler.

Pour rappeler des commandes dans la mémoire tampon de l'historique, appuyez sur **Ctrl**+**P** ou sur la touche **Up Arrow**. Le résultat de la commande commence par la commande la plus récente. Appuyez plusieurs fois sur ces touches pour rappeler des commandes plus anciennes. Pour revenir à des commandes plus récentes dans la mémoire tampon de l'historique, appuyez sur **Ctrl**+**N** ou sur la touche **Down Arrow**. Appuyez plusieurs fois sur ces touches pour rappeler des commandes plus récentes.

Par défaut, l'historique de commande est activé et le système enregistre les 10 dernières lignes de commande dans sa mémoire tampon. Utilisez la commande EXEC privilégiée **show history** pour afficher le contenu du tampon.

Cette commande permet également d'augmenter le nombre de lignes de commande que l'historique enregistre uniquement au cours de la session de terminal en cours. Utilisez la commande EXEC de l'utilisateur **terminal history size** pour augmenter ou réduire la taille du tampon.

Un exemple de commandes **terminal history size** et **show history** est illustré dans la figure.

```
R1# terminal history size 200R1# show history  show ip int brief  show interface g0/0/0  show ip route  show running-config  show history  terminal history size 200  
```

## 1.6 Module pratique et questionnaire

### 1.6.3 Qu'est-ce que j'ai appris dans ce module?

**Configurer un commutateur avec les paramètres initiaux**

Une fois qu'un commutateur Cisco est mis sous tension, il passe par une séquence de démarrage en cinq étapes. Dans l'exemple, la variable d'environnement BOOT est définie à l'aide de la commande de mode de configuration globale **boot system**. L'IOS se trouve dans un dossier distinct et le chemin du dossier est spécifié. Utilisez les LED des interrupteurs pour surveiller l'activité et les performances des interrupteurs : SYST, RPS, STAT, DUPLX, SPEED et PoE. Le chargeur de démarrage permet d'accéder au commutateur si le système d'exploitation ne peut être utilisé en raison de fichiers système manquants ou endommagés. Le chargeur de démarrage dispose d'une ligne de commande qui permet d'accéder aux fichiers stockés dans la mémoire flash. Pour préparer un commutateur pour l'accès à la gestion à distance, le commutateur doit être configuré avec une adresse IP et un masque de sous-réseau. Pour gérer le commutateur à partir d'un réseau distant, le commutateur doit être configuré avec une passerelle par défaut. Pour configurer le switch SVI, vous devez d'abord configurer l'interface de gestion, puis configurer la passerelle par défaut, et enfin, vérifier votre configuration.

**Configurer les ports du commutateur**

La communication en duplex intégral augmente la largeur de bande effective en permettant aux deux extrémités d'une connexion de transmettre et de recevoir des données simultanément. La communication semi-duplex est unidirectionnelle. Les ports de commutation peuvent être configurés manuellement avec des paramètres de duplex et de vitesse spécifiques. Utilisez la négociation automatique lorsque les paramètres de vitesse et de duplex du périphérique connecté au port sont inconnus ou peuvent changer. Lorsque la fonction auto-MDIX est activée, l'interface détecte automatiquement le type de connexion de câble requis (droit ou croisé) et configure la connexion de manière appropriée. Il existe plusieurs commandes **show** à utiliser lors de la vérification de la configuration des commutateurs. Utilisez la commande **show running-config** et la commande **show interfaces** pour vérifier la configuration d'un port de commutateur. La sortie de la commande **show interfaces** est également utile pour détecter les problèmes courants de couche d'accès réseau, car elle affiche l'état du protocole de liaison de ligne et de données. Les erreurs d'entrée signalées à partir de la commande **show interfaces** comprennent: les trames runt, les géants, les erreurs CRC, ainsi que les collisions et les collisions tardives. Permet **show interfaces** de déterminer si votre réseau n'a pas de connexion ou une connexion incorrecte entre un commutateur et un autre périphérique.

**Accès distant sécurisé**

Telnet est un protocole plus ancien qui utilise un mode de transmission en texte clair non sécurisé des informations d'identification (nom d'utilisateur et mot de passe) et des données entre les périphériques. SSH (utilisant le port TCP 22) est un protocole sécurisé qui fournit une connexion de gestion cryptée à un appareil distant. SSH assure la sécurité des connexions à distance en fournissant un cryptage fort lorsqu'un dispositif est authentifié (nom d'utilisateur et mot de passe) et également pour les données transmises entre les dispositifs communicants. Utilisez la commande **show version** du commutateur pour voir quel IOS le commutateur est en cours d'exécution. Un nom de fichier IOS qui inclut la combinaison "k9" prend en charge les fonctionnalités et les capacités cryptographiques. Pour configurer SSH, vous devez vérifier que le commutateur le prend en charge, configurer le domaine IP, générer des paires de clés RSA, configurer l'authentification d'utilisation, configurer les lignes VTY et activer SSH version 2. Pour vérifier que SSH est opérationnel, utilisez la commande **show ip ssh** pour afficher la version et les données de configuration de SSH sur le périphérique.

**Configuration de base du routeur**

Les tâches de configuration initiale suivantes doivent toujours être effectuées : nommer l'appareil pour le distinguer des autres routeurs et configurer les mots de passe, configurer une bannière pour fournir une notification légale d'accès non autorisé, et enregistrer les modifications sur un routeur. Une fonction de distinction entre les commutateurs et les routeurs est le type d'interface pris en charge par chacun. Par exemple, les commutateurs de couche 2 prennent en charge les réseaux locaux et disposent donc de plusieurs ports FastEthernet ou Gigabit Ethernet. La topologie à double pile est utilisée pour démontrer la configuration des interfaces IPv4 et IPv6 du routeur. Les routeurs sont compatibles avec les LAN et les WAN et peuvent interconnecter différents types de réseaux; ils prennent donc en charge plusieurs types d'interfaces. Par exemple, les routeurs à services intégrés G2 disposent d'une ou de deux interfaces Gigabit Ethernet intégrées et de logements HWIC (carte d'interface WAN haut débit) pour héberger d'autres types d'interface réseau, y compris les interfaces série, DSL et câblées. L'interface de bouclage IPv4 est une interface logique interne au routeur. Il n'est pas attribué à un port physique et ne peut jamais être connecté à un autre appareil.

**Vérifier les réseaux directement connectés**

Utilisez les commandes suivantes pour identifier rapidement l'état d'une interface: **show ip interface brief** et **show ipv6 interface brief** pour voir le résumé de toutes les interfaces (adresses IPv4 et IPv6 et état opérationnel), **show running-config interface interface-id** pour voir les commandes appliquées à une interface spécifiée **show ip route** et **show ipv6 route** pour voir le contenu de la table de routage IPv4 ou IPv6 stockée dans la RAM. La sortie des commandes **show ip interface brief** et **show ipv6 interface brief** peut être utilisée pour révéler rapidement l'état de toutes les interfaces sur le routeur. La commande **show ipv6 interface gigabitethernet 0/0/0** affiche l'état de l'interface et toutes les adresses IPv6 appartenant à l'interface. En plus de l'adresse locale du lien et de l'adresse de monodiffusion globale, la sortie comprend les adresses de multidiffusion attribuées à l'interface. La sortie de la commande **show running-config interface** affiche les commandes actuelles appliquées à une interface spécifique. La commande **show interfaces** affiche les informations sur l'interface et le nombre de flux de paquets pour toutes les interfaces de l'appareil. Vérifiez la configuration de l'interface à l'aide des commandes **show ip interface** et **show ipv6 interface**, qui affichent les informations relatives à IPv4 et IPv6 pour toutes les interfaces d'un routeur. Vérifiez les itinéraires à l'aide des commandes **show ip route** et **show ipv6 route**. Filtrer la sortie de la commande show à l'aide du caractère pipe (|). Utilisez les expressions de filtre: section, include, exclude et begin. Par défaut, l'historique de commande est activé et le système enregistre les 10 dernières lignes de commande dans sa mémoire tampon. Utilisez la commande EXEC privilégiée **show history** pour afficher le contenu du tampon.

# Modules 2: Concepts de Commutation
## 2.1 Transfert de trame
### 2.1.1 Commutation dans la mise en réseau

Le concept de commutation et de transfert de trames est universel dans les réseaux et les télécommunications. Différents types de commutateurs sont utilisés dans les LAN, les WAN et dans le réseau téléphonique public commuté (RTPC).

La décision sur la manière dont un commutateur transmet le trafic est prise en fonction du flux de ce trafic. Il existe deux termes associés aux trames qui entrent et sortent d'une interface :

- **Entrée (Ingress)** - Ceci est utilisé pour décrire le port par lequel une trame entre dans l'appareil.
- **Sortie (Egress)** - Ceci est utilisé pour décrire le port que les trames utiliseront lorsqu'elles quitteront l'appareil.

Un commutateur LAN maintient un tableau qui est référencé lors de l'acheminement du trafic par le commutateur. La seule intelligence d'un commutateur LAN est sa capacité à utiliser sa table pour transférer le trafic. Un commutateur LAN transmet le trafic en fonction du port d'entrée et de l'adresse MAC de destination d'une trame Ethernet. Avec un commutateur LAN, il n'existe qu'une seule table de commutation maître qui décrit une association stricte entre les adresses MAC et les ports ; par conséquent, une trame Ethernet avec une adresse de destination donnée sort toujours du même port de sortie, quel que soit le port d'entrée dans lequel elle entre.

**Remarque:** Une trame Ethernet ne sera jamais transférée sur le même port que celui sur lequel elle a été reçue.

### 2.1.2 Table d'adresse MAC du commutateur

Un commutateur est constitué de circuits intégrés et du logiciel associé qui contrôle les chemins de données dans le commutateur. Les commutateurs utilisent les adresses MAC de destination pour diriger les communications du réseau à travers le commutateur, hors du port approprié, vers la destination.

Pour qu'un commutateur sache vers quel port transférer une trame, il doit tout d'abord apprendre quels périphériques existent sur chaque port. À mesure que le commutateur apprend la relation entre les ports et les dispositifs, il construit une table appelée table d'adresses MAC. Ce tableau est stocké dans la mémoire adressable de contenu (CAM) qui est un type particulier de mémoire utilisé dans les applications de recherche à haute vitesse. Pour cette raison, la table d'adresses MAC est parfois aussi appelée table CAM.

Les commutateurs LAN déterminent comment traiter les trames de données entrantes en gérant la table d'adresses MAC. Un commutateur établit sa table d'adresses MAC en enregistrant l'adresse MAC de chaque périphérique connecté à chacun de ses ports. Le commutateur utilise les informations de la table d'adresses MAC pour envoyer des trames destinées à un périphérique donné au port qui a été attribué à ce périphérique.

### 2.1.3 La méthode "Switch Learn and Forward"

Le processus en deux étapes suivant est effectué sur chaque trame Ethernet qui entre dans un commutateur.

**Étape 1. Découverte - Examen de l'adresse MAC source**

Le commutateur vérifie si de nouvelles informations sont disponibles sur chacune des trames entrantes. Il le fait en examinant l'adresse MAC source de la trame et le numéro de port où la trame est entrée dans le commutateur :

- Si l'adresse MAC source n'existe pas dans la table des adresses MAC, l'adresse MAC et le numéro de port entrant sont ajoutés à la table.
- Si l'adresse MAC source existe, le commutateur réinitialise le compteur d'obsolescence de cette entrée. Par défaut, la plupart des commutateurs Ethernet conservent les entrées dans la table pendant cinq minutes. Si l'adresse MAC source existe dans le tableau mais sur un port différent, le commutateur la traite comme une nouvelle entrée. L'entrée est remplacée en utilisant la même adresse MAC, mais avec le numéro de port le plus récent.

**Étape 2. Transfert - Examen de l'adresse MAC de destination**

Si l'adresse MAC de destination est une adresse monodiffusion, le commutateur cherchera une correspondance entre l'adresse MAC de destination de la trame et une entrée dans sa table d'adresses MAC :

- Si l'adresse MAC de destination se trouve dans la table, le commutateur transfère la trame par le port spécifié.
- Si l'adresse MAC de destination ne se trouve pas dans la table, le commutateur transfère la trame sur tous les ports sauf celui d'entrée. Cela s’appelle une monodiffusion inconnue. Si l'adresse MAC de destination est une diffusion ou une multidiffusion, la trame est également envoyée sur tous les ports à l'exception du port entrant.

### 2.1.5 Méthodes de transmission par commutateur

Les commutateurs prennent très rapidement les décisions de transfert de couche 2. Cela est dû aux logiciels sur les circuits intégrés spécifiques aux applications (ASIC). Les ASIC réduisent le temps de traitement des images dans l'appareil et permettent à ce dernier de gérer un nombre accru d'images sans dégradation des performances.

Les commutateurs de couche 2 utilisent l'une des deux méthodes suivantes pour changer de trame :

- **Commutation de stockage et de retransmission** - Cette méthode prend une décision de retransmission sur une trame après avoir reçu la trame entière et vérifié la présence d'erreurs dans la trame à l'aide d'un mécanisme mathématique de vérification des erreurs appelé contrôle de redondance cyclique (CRC). La commutation par stockage et retransmission est la méthode de commutation LAN principale de Cisco.
- **Commutation par coupure** - Cette méthode lance le processus de transfert après que l'adresse MAC de destination d'une trame entrante et le port de sortie ont été déterminés.

### 2.1.6 Commutation par stockage et retransmission (store and forward)

La commutation Store-and-forward, par opposition à la commutation par coupure, présente les deux caractéristiques principales suivantes:

- **Vérification des erreurs** - Après avoir reçu la trame complète sur le port d'entrée, le commutateur compare la valeur de la séquence de vérification de la trame (FCS) dans le dernier champ du datagramme à ses propres calculs FCS. La FCS est un processus de contrôle des erreurs permettant de vérifier que la trame est exempte d'erreurs physiques et de liaison de données. Si la trame est exempte d'erreurs, le commutateur transfère la trame. Sinon, la trame est abandonné.
- **Mise en mémoire tampon automatique** - Le processus de mise en mémoire tampon du port d'entrée utilisé par les commutateurs de stockage et de transfert offre la souplesse nécessaire pour prendre en charge toute combinaison de vitesses Ethernet. Par exemple, le traitement d'une trame entrante voyageant dans un port Ethernet de 100 Mbps qui doit être envoyée par une interface de 1 Gbps nécessiterait l'utilisation de la méthode de stockage et de retransmission. Dès que les vitesses du port d'entrée et de sortie ne correspondent pas, le commutateur enregistre la trame complète dans une mémoire tampon, calcule le contrôle FCS, puis transmet la trame au port de sortie et l'envoie.

La figure illustre comment store-and-forward prend une décision basée sur la trame Ethernet.

![[Pasted image 20250217190841.png]]

### 2.1.7 Commutation par coupure (cut-through)

La méthode de commutation store-and-forward supprime les trames qui ne réussissent pas la vérification FCS. Par conséquent, il ne transmet pas de trames non valides.

En revanche, la méthode de commutation par coupure peut transmettre des trames non valides parce qu'aucun contrôle FCS n'est effectué. Cependant, la commutation par coupure a la capacité d'effectuer une commutation de trame rapide. Cela signifie que le commutateur peut prendre une décision de transfert dès qu'il a recherché l'adresse MAC de destination de la trame dans son tableau d'adresses MAC, comme le montre la figure.

![[Pasted image 20250217190902.png]]

Il n'a pas besoin d'attendre que le reste de la trame soit arrivé au port d'entrée pour prendre une décision.

La commutation sans fragment est une forme modifiée de commutation coupée dans laquelle le commutateur ne commence à transférer la trame qu'après avoir lu le champ Type. La commutation sans fragment offre une meilleure vérification des erreurs que la coupure, avec pratiquement aucune augmentation de la latence.

La faible latence de la commutation cut-through la rend mieux adaptée aux applications HPC (high-performance computing) extrêmement exigeantes, qui nécessitent des latences de processus à processus de 10 microsecondes au plus.

La méthode de commutation par coupure peut transmettre des images avec des erreurs. S'il y a un taux d'erreur élevé (trames non valides) sur le réseau, la commutation par coupure peut avoir un impact négatif sur la largeur de bande, ce qui encombre la bande passante avec des trames endommagées et non valides.

## 2.2 Domaines de commutation
### 2.2.1 Domaines de collision

Dans la rubrique précédente, vous avez acquis une meilleure compréhension de ce qu'est un commutateur et de son fonctionnement. Cette rubrique explique comment les commutateurs fonctionnent les uns avec les autres et avec d'autres périphériques pour éliminer les collisions et réduire la congestion du réseau. Les termes collisions et congestion sont utilisés ici de la même manière que vous les utilisez dans la circulation routière.

Dans les segments Ethernet traditionnels basés sur le concentrateur, les périphériques réseau étaient en concurrence pour le support partagé. Les segments de réseau qui partagent la même bande passante entre les périphériques sont appelés domaines de collision. Lorsque deux ou plusieurs dispositifs dans le même domaine de collision tentent de communiquer en même temps, une collision se produit.

Si un port de commutateur Ethernet fonctionne en mode bidirectionnel non simultané, chaque segment est dans son propre domaine de collision. Il n'y a pas de domaine de collision lorsque les ports de commutateur fonctionnent en duplex intégral. Toutefois, il peut y avoir un domaine de collision si un port de commutateur fonctionne en semi-duplex.

Par défaut, les ports des commutateurs Ethernet s'auto-négocient en duplex intégral lorsque le dispositif adjacent peut également fonctionner en duplex intégral. Si le port du commutateur est connecté à un dispositif fonctionnant en semi-duplex, tel qu'un ancien concentrateur, alors le port du commutateur fonctionnera en semi-duplex. Dans le cas du mode bidirectionnel non simultané, le port de commutateur appartient à un domaine de collision.

Comme le montre la figure, le duplex intégral est choisi si les deux appareils ont la capacité ainsi que leur plus grande largeur de bande commune.
![[Pasted image 20250217190954.png]]

### 2.2.2 Domaines de diffusion

Un ensemble de commutateurs interconnectés constitue un domaine de diffusion unique. Seul un périphérique de couche réseau, tel qu'un routeur, peut diviser un domaine de diffusion de couche 2. Les routeurs sont utilisés pour segmenter les domaines de diffusion, mais ils segmentent également les domaines de collision.

Lorsqu'un périphérique envoie une diffusion de couche 2, l'adresse MAC de destination de la trame est remplie de 1 binaires.

Le domaine de diffusion de couche 2 est appelé domaine de diffusion MAC. Le domaine de diffusion MAC est constitué de tous les périphériques du réseau local qui reçoivent les trames de diffusion provenant d'un hôte.

Lorsqu'un commutateur reçoit une trame de diffusion, il la transfère à tous ses ports, sauf au port d'entrée où elle a été reçue. Chaque périphérique connecté au commutateur reçoit un exemplaire de la trame de diffusion et la traite.

Les diffusions sont parfois nécessaires pour localiser initialement d'autres équipements et services réseau, mais elles réduisent l'efficacité du réseau. La bande passante du réseau est utilisée pour transmettre le trafic de diffusion. Un nombre de diffusions et une charge de trafic trop élevés sur un réseau peuvent entraîner un encombrement qui ralentit les performances réseau.

Lorsque deux commutateurs sont interconnectés, le domaine de diffusion augmente, comme l'illustre la deuxième partie de l'animation. Dans cet exemple, une trame de diffusion est transférée à tous les ports connectés sur le commutateur S1. Le commutateur S1 est connecté au commutateur S2. La trame est alors également propagée à tous les périphériques connectés au commutateur S2.

### 2.2.3 Réduire la congestion du réseau

Les commutateurs LAN ont des caractéristiques particulières qui les aident à réduire la congestion du réseau. Par défaut, les ports de commutation interconnectés tentent d'établir une liaison en duplex intégral, éliminant ainsi les domaines de collision. Chaque port full-duplex du commutateur fournit la totalité de la bande passante à l'appareil ou aux appareils qui sont connectés à ce port. Les connexions en duplex intégral (full-duplex) ont considérablement augmenté les performances du réseau local et sont requises pour des vitesses Ethernet de 1 Gbps et plus.

Les commutateurs interconnectent les segments de réseau local, utilisent une table d'adresses MAC pour déterminer les ports de sortie et peuvent réduire ou éliminer entièrement les collisions. Les caractéristiques des commutateurs qui atténuent la congestion du réseau sont notamment les suivantes:

- **Vitesses de port rapides** - Les vitesses de port des commutateurs Ethernet varient selon le modèle et l'objectif. Par exemple, la plupart des commutateurs de la couche d'accès supportent des vitesses de port de 100 Mbps et 1 Gbps. Les commutateurs de la couche distribution prennent en charge des vitesses de port de 100 Mbps, 1 Gbps et 10 Gbps. Les commutateurs de la couche centrale et des centres de données peuvent prendre en charge des vitesses de port de 100 Gbps, 40 Gbps et 10 Gbps. Les commutateurs avec des vitesses de port plus élevées coûtent plus cher, mais peuvent réduire la congestion.
- **Commutation interne rapide** - Les commutateurs utilisent un bus interne rapide ou une mémoire partagée pour fournir des performances élevées.
- **Grandes mémoires tampons de trames** - Les commutateurs utilisent de grandes mémoires tampons pour stocker temporairement plus d'images reçues avant de devoir commencer à les déposer. Cela permet de transférer le trafic d'entrée à partir d'un port plus rapide (par exemple, 1 Gbit/s) vers un port de sortie plus lent (par exemple, 100 Mbit/s) sans perdre de trames.
- **Haute densité de port** - Un commutateur à haute densité de port réduit les coûts globaux car il réduit le nombre de commutateurs requis. Par exemple, si 96 ports d'accès étaient nécessaires, il serait moins coûteux d'acheter deux commutateurs 48 ports au lieu de quatre commutateurs 24 ports. Les commutateurs haute densité de port aident également à maintenir le trafic local, ce qui contribue à réduire la congestion.

### 2.3.1 Qu'est-ce que j'ai appris dans ce module?

**Retransmission de trame**

La décision sur la manière dont un commutateur transmet le trafic est basée sur le flux de ce trafic. Le terme "ingress" décrit le port par lequel une trame entre dans un appareil. Le terme "egress" décrit le port que les cadres utiliseront lorsqu'ils quitteront l'appareil. Une trame Ethernet ne sera jamais transférée hors du port où elle est entrée. Pour qu'un commutateur sache vers quel port transférer une trame, il doit tout d'abord apprendre quels périphériques existent sur chaque port. À mesure que le commutateur apprend la relation entre les ports et les dispositifs, il construit une table appelée table d'adresses MAC. Chaque trame qui entre dans un commutateur est vérifiée pour connaître de nouvelles informations en examinant l'adresse MAC source de la trame et le numéro de port où la trame est entrée dans le commutateur. Si l'adresse MAC de destination est une adresse monodiffusion, le commutateur recherche une correspondance entre l'adresse MAC de destination de la trame et une entrée dans sa table d'adresses MAC. Les méthodes de transfert comprennent le stockage et la transmission ainsi que la coupure. Le système de stockage et de transmission utilise la vérification des erreurs et la mise en mémoire tampon automatique. Le cut-through ne vérifie pas les erreurs. Au lieu de cela, il effectue une commutation rapide de trame. Cela signifie que le commutateur peut prendre une décision de transfert dès qu'il a recherché l'adresse MAC de destination de la trame dans sa table d'adresses MAC.

**Changement de domaine**

Si un port de commutateur Ethernet fonctionne en mode bidirectionnel non simultané, chaque segment est dans son propre domaine de collision. Il n'y a pas de domaine de collision lorsque les ports de commutateur fonctionnent en duplex intégral. Par défaut, les ports des commutateurs Ethernet s'auto-négocient en duplex intégral lorsque le dispositif adjacent peut également fonctionner en duplex intégral. Un ensemble de commutateurs interconnectés constitue un domaine de diffusion unique. Seul un périphérique de couche réseau, tel qu'un routeur, peut diviser un domaine de diffusion de couche 2. Le domaine de diffusion de couche 2 est appelé domaine de diffusion MAC. Le domaine de diffusion MAC est constitué de tous les périphériques du réseau local qui reçoivent les trames de diffusion provenant d'un hôte. Lorsqu'un commutateur reçoit une trame de diffusion, il la transfère à tous ses ports, sauf au port d'entrée où elle a été reçue. Chaque périphérique connecté au commutateur reçoit un exemplaire de la trame de diffusion et la traite. Les commutateurs peuvent : interconnecter des segments de LAN, utiliser une table d'adresses MAC pour déterminer les ports de sortie, et peuvent réduire ou éliminer entièrement les collisions. Les caractéristiques des commutateurs qui atténuent la congestion du réseau sont des vitesses de port rapides, une commutation interne rapide, des tampons de trame volumineux et une densité de port élevée.
# Modules 3: VLANs

## 3.1 Aperçu des réseaux locaux virtuels (VLANs)
### 3.1.1 Définitions des VLANs

Bien sûr, organiser votre réseau en petits réseaux n'est pas aussi simple que de séparer les vis et de les mettre dans des bocaux. Mais cela rendra votre réseau plus facile à gérer. Dans un réseau commuté, les VLANs assurent la segmentation et favorisent la flexibilité de l'entreprise. Un groupe d'appareils dans un VLAN communiquent comme s'ils étaient reliés au même câble. Les VLANs reposent sur des connexions logiques, et non des connexions physiques.

Comme le montre la figure, les VLANs d'un réseau commuté permettent aux utilisateurs de différents services (IT, HR et Ventes) de se connecter au même réseau, quel que soit le commutateur physique utilisé ou l'emplacement d'un réseau local de campus.
![[Pasted image 20250217191229.png]]

Les VLANs permettent à un administrateur de segmenter les réseaux en fonction de facteurs tels que la fonction, l'équipe de projet ou l'application, quel que soit l'emplacement physique de l'utilisateur ou de l'appareil. Chaque VLAN est considéré comme un réseau logique distinct. Les appareils d'un VLAN se comportent comme s'ils se trouvaient chacun sur leur propre réseau indépendant, même s'ils partagent une infrastructure commune avec d'autres VLAN. N'importe quel port du commutateur peut appartenir à un VLAN.

Les paquets de monodiffusion, de diffusion et de multidiffusion ne sont transférés et diffusés que vers les terminaux appartenant au VLAN d'où ils proviennent. Les paquets destinés à des périphériques qui n'appartiennent pas au VLAN doivent être transférés via un périphérique qui prend en charge le routage.

Plusieurs sous-réseaux IP peuvent exister sur un réseau commuté, sans l’utilisation de plusieurs VLAN. Cependant, les périphériques sont dans le même domaine de diffusion de la couche 2. Cela signifie que les diffusions de la couche 2, telles qu’une demande ARP, seront reçues par tous les périphériques du réseau commuté, même par ceux non prévus pour recevoir la diffusion.

Un VLAN crée un domaine de diffusion logique qui peut s'étendre sur plusieurs segments de réseau local physique. Les VLANs améliorent les performances réseau en divisant de vastes domaines de diffusion en domaines plus petits. Si un périphérique d'un VLAN envoie une trame Ethernet de diffusion, tous les périphériques du VLAN la reçoivent, mais pas les périphériques d'autres VLAN.

Grâce aux VLANs, les administrateurs de réseau peuvent mettre en œuvre des politiques d'accès et de sécurité en fonction de groupes d'utilisateurs spécifiques. Chaque port de commutateur peut être attribué à un seul VLAN (à l’exception des ports connectés à un téléphone IP ou à un autre commutateur).

### 3.1.2 Avantages d'une conception VLAN

Chaque VLAN d’un réseau commuté correspond à un réseau IP. Par conséquent, la conception d’un VLAN doit tenir compte de la mise en œuvre d’un modèle d’adressage réseau hiérarchique. L'adressage hiérarchique du réseau signifie que les numéros de réseau IP sont appliqués à des segments de réseau ou à des VLAN d'une manière qui prend en considération le réseau dans son ensemble. Les blocs d’adresses réseau contiguës sont réservés et configurés sur les périphériques situés dans une zone spécifique du réseau, comme l’illustre la figure.

![[Pasted image 20250217191257.png]]

Le tableau répertorie les avantages de la conception d'un réseau avec des VLANs.

|**Bénéfice**|**Description**|
|---|---|
|Domaines de Diffusion Plus Petits|- La division d'un réseau en VLAN réduit le nombre de périphériques dans le domaine de diffusion.<br>- Dans la figure, il y a six ordinateurs dans le réseau, mais seulement trois domaines de diffusion (p. ex., Faculté, Étudiant et Invité).|
|Sécurité optimisée|- Seuls les utilisateurs du même VLAN peuvent communiquer ensemble.<br>- Dans la figure, le trafic réseau de professeurs sur VLAN 10 est complètement séparés et sécurisés des utilisateurs sur d'autres VLAN.|
|Amélioration de l'efficacité des ressources IT|- Les VLAN simplifient la gestion du réseau car les utilisateurs ayant des besoins similaires peuvent être configurés sur le même VLAN.<br>- Les VLAN peuvent être nommés pour les rendre plus faciles à identifier.<br>- Dans la figure, VLAN 10 a été nommé “Faculté”, VLAN 20 “Étudiant”, et VLAN 30 “Invité.”|
|Coût réduit|Les VLAN réduisent la nécessité de mises à niveau coûteuses du réseau et utilisent plus efficacement la largeur de bande et les liaisons montantes existantes, ce qui permet de réaliser des économies.|
|Meilleures performances|Les domaines de diffusion plus petits réduisent le trafic inutile sur le réseau et améliorent les performances.|
|Une gestion simplifiée des projets et des applications|- Les VLAN regroupent les utilisateurs et les périphériques réseau pour prendre en charge l'entreprise ou les exigences géographiques.<br>- Avoir des fonctions distinctes rend la gestion d'un projet ou l'utilisation d'un application spécialisée plus facile ; un exemple d'une telle application est une plateforme de développement de l'apprentissage en ligne pour la faculté.|
### 3.1.3 Types de réseaux locaux virtuels

Les VLAN sont utilisés pour différentes raisons dans les réseaux modernes. Certains types de VLAN sont définis par les classes de trafic. D’autres types de VLAN sont définis par leur fonction spécifique.

**VLAN par défaut**

Le VLAN par défaut sur un commutateur Cisco est le VLAN 1. Par conséquent, tous les ports de commutateur sont sur le VLAN 1, sauf s'il est explicitement configuré pour être sur un autre VLAN. Par défaut, tout le trafic de contrôle de couche 2 est associé au VLAN 1.

Les faits importants à retenir à propos du VLAN 1 sont les suivants :

- Tous les ports sont attribués à VLAN 1 par défaut.
- Le VLAN natif est le VLAN 1 par défaut.
- Le VLAN de gestion est le VLAN 1 par défaut.
- Le VLAN 1 ne peut pas être renommé ni supprimé.

Par exemple, dans la sortie **show vlan brief**, tous les ports sont actuellement attribués au VLAN 1 par défaut. Aucun VLAN natif n’est explicitement attribué et aucun autre VLAN n’est actif ; par conséquent, le VLAN natif est défini comme VLAN de gestion. Il s’agit d’un risque de sécurité.

```
Switch# show vlan brief 
VLAN Name              Status   Ports
---- ----------------- -------  --------------------
1    default           active   Fa0/1, Fa0/2, Fa0/3, Fa0/4
                                Fa0/5, Fa0/6, Fa0/7, Fa0/8
                                Fa0/9, Fa0/10, Fa0/11, Fa0/12
                                Fa0/13, Fa0/14, Fa0/15, Fa0/16
                                Fa0/17, Fa0/18, Fa0/19, Fa0/20
                                Fa0/21, Fa0/22, Fa0/23, Fa0/24
                                Gi0/1, Gi0/2
1002 fddi-default                     act/unsup
1003 token-ring-default               act/unsup
1004 fddinet-default                  act/unsup
1005 trnet-default                    act/unsup
```

**VLAN de données**

Les VLANs de données sont des VLAN configurés pour séparer le trafic généré par l'utilisateur. Les VLANs de données sont utilisés pour diviser un réseau en groupes d’utilisateurs ou de périphériques. Un réseau moderne aurait de nombreux VLANs de données en fonction des besoins de l'organisation. Notez que le trafic de gestion vocale et réseau ne doit pas être autorisé sur les VLANs de données.

**VLAN natif**

Le trafic utilisateur à partir d'un VLAN doit être marqué avec son ID VLAN lorsqu'il est envoyé à un autre commutateur. Les ports de trunk sont utilisés entre les commutateurs pour prendre en charge la transmission du trafic balisé. Plus précisément, un port de trunk 802.1Q insère une balise de 4 octets dans l'en-tête de trame Ethernet pour identifier le VLAN auquel appartient la trame.

Un commutateur peut également avoir à envoyer du trafic non balisé à travers un lien de trunk. Le trafic non marqué est généré par un commutateur et peut également provenir de périphériques hérités. Le port interurbain 802.1Q place le trafic non étiqueté sur le VLAN natif. Le VLAN natif sur un commutateur Cisco est VLAN 1 (VLAN par défaut).

Il est généralement recommandé de configurer le VLAN natif en tant que VLAN inutilisé, distinct du VLAN 1 et des autres VLAN. En fait, il n’est pas rare de dédier un VLAN fixe jouant le rôle de VLAN natif pour tous les ports trunk du domaine commuté.

**VLAN de gestion**

Un VLAN de gestion est un VLAN de données configuré spécifiquement pour le trafic de gestion réseau, y compris SSH, Telnet, HTTPS, HHTP et SNMP. Par défaut, le VLAN 1 est configuré comme VLAN de gestion sur un commutateur de couche 2.

**VLAN voix**

Un VLAN distinct est nécessaire pour prendre en charge la voix sur IP (VoIP). Le trafic VoIP requiert les éléments suivants :

- bande passante consolidée pour garantir la qualité de la voix ;
- priorité de transmission par rapport aux autres types de trafic réseau ;
- possibilité de routage autour des zones encombrées du réseau ;
- délai inférieur à 150 ms sur tout le réseau.

Pour remplir ces conditions, le réseau entier doit être conçu pour prendre en charge la voix sur IP.

Dans la figure, le VLAN 150 est conçu pour acheminer le trafic vocal. L’ordinateur étudiant PC5 est connecté au téléphone IP Cisco et ce dernier est connecté au commutateur S3. L’ordinateur PC5 se trouve dans le VLAN 20 qui est utilisé pour les données des étudiants.

![[Pasted image 20250217191437.png]]

## 3.2 VLAN dans un environnement à commutateurs multiples
### 3.2.1 Définition des trunks de VLAN

Les VLAN ne seraient pas très utiles sans les trunks de VLAN. Les trunks VLAN permettent à tout le trafic VLAN de se propager entre les commutateurs. Cela permet aux périphériques connectés à différents commutateurs mais dans le même VLAN de communiquer sans passer par un routeur.

Une agrégation est une liaison point à point entre deux périphériques réseau qui porte plusieurs VLAN. Un trunk de VLAN permet d’étendre les VLAN à l’ensemble d’un réseau. Cisco prend en charge la norme IEEE 802.1Q pour la coordination des trunks sur les interfaces Fast Ethernet, Gigabit Ethernet et 10 Gigabit Ethernet.

Un trunk VLAN n'appartient pas à un VLAN spécifique. Au lieu de cela, il s'agit d'un canal pour plusieurs VLAN entre les commutateurs et les routeurs. Un trunk peut également être utilisée entre un périphérique réseau et un serveur ou un autre périphérique équipé d’une carte réseau 802.1Q appropriée. Par défaut, sur un commutateur Cisco Catalyst, tous les VLAN sont pris en charge sur un port trunk.

Dans la figure, les liens mis en évidence entre les commutateurs S1 et S2, et S1 et S3 sont configurés pour transmettre le trafic provenant des VLAN 10, 20, 30 et 99 (c'est-à-dire le VLAN natif) sur le réseau. Ce réseau ne peut pas fonctionner sans trunks de VLAN.

![[Pasted image 20250217191520.png]]

### 3.2.2 Réseau sans VLAN

Lorsqu'un commutateur reçoit une trame de diffusion sur l'un de ses ports, il la transmet à tous les autres ports, à l'exception du port où la diffusion a été reçue. Dans l'animation, l'ensemble du réseau est configuré dans le même sous-réseau (172.17.40.0/24) et aucun VLAN n'est configuré. Par conséquent, lorsque l’ordinateur du personnel enseignant (PC1) envoie une trame de diffusion, le commutateur S2 l’envoie par tous ses ports. Par la suite, l’ensemble du réseau reçoit la diffusion, car il s’agit d’un seul domaine de diffusion.

3.2.3 Réseau avec VLAN

Cliquez sur Lire dans l'animation pour voir que le même réseau a maintenant été segmenté à l'aide de deux VLAN. Les périphériques sur les autres sous-réseaux IPv4 vont également recevoir la même trame de diffusion. Lorsqu’une trame de diffusion est envoyée de l’ordinateur du personnel enseignant (PC1) au commutateur S2, ce dernier transfère la trame de diffusion uniquement aux ports du commutateur configurés pour prendre en charge le VLAN 10.

Les ports qui assurent la connexion entre les commutateurs S2 et S1 (ports F0/1) et entre les commutateurs S1 et S3 (ports F0/3) sont des trunks qui ont été configurées pour prendre en charge tous les VLAN du réseau.

Lorsque le commutateur S1 reçoit la trame de diffusion sur le port F0/1, il la transfère par le seul autre port configuré pour prendre en charge le VLAN 10, soit le port F0/3. Lorsque le commutateur S3 reçoit la trame de diffusion sur le port F0/3, il la transfère par le seul autre port configuré pour prendre en charge le VLAN 10, soit le port F0/11. La trame de diffusion parvient au seul autre ordinateur sur le réseau configuré dans le VLAN 10, soit l’ordinateur PC4 du personnel enseignant.

Lorsque des VLAN sont implémentés sur un commutateur, la transmission du trafic monodiffusion, multidiffusion et diffusion à partir d’un hôte figurant sur un VLAN donné est limitée aux périphériques se trouvant sur ce VLAN.

### 3.2.4 Identification du VLAN à l'aide d'une balise

L'en-tête de trame Ethernet standard ne contient pas d'informations sur le VLAN auquel appartient la trame. Par conséquent, lorsque des trames Ethernet sont placées sur un trunk, des informations sur les VLAN auxquels elles appartiennent doivent être ajoutées. Ce processus, appelé étiquetage, s’effectue à l’aide de l’en-tête IEEE 802.1Q, précisé dans la norme IEEE 802.1Q. L’en-tête 802.1Q inclut une étiquette de 4 octets insérée dans l’en-tête d’origine de la trame Ethernet, indiquant le VLAN auquel la trame appartient.

Lorsque le commutateur reçoit une trame sur un port configuré en mode d’accès et associé à un VLAN, il insère une étiquette VLAN dans l’en-tête de trame, recalcule la séquence de contrôle de trame, puis envoie la trame étiquetée par un port trunk.

**Détails des champs de balises VLAN**

Comme le montre la figure, le champ d'information de contrôle des balises VLAN se compose d'un champ de type, d'un champ de priorité, d'un champ d'identificateur de format canonique et d'un champ d'ID VLAN :

- **Type** - Une valeur de 2 octets appelée valeur d'ID de protocole de balise (TPID). Pour Ethernet, il est défini sur hexadécimal 0x8100.
- **Priorité utilisateur** - Une valeur de 3 bits qui soutient la mise en œuvre du niveau ou du service.
- **CFI (Canonical Format Identifier)** - Identificateur de 1 bit qui permet aux trames Token Ring d'être transportées sur les liaisons Ethernet.
- **VID (VLAN ID)** - Un numéro d'identification VLAN de 12 bits qui prend en charge jusqu'à 4096 ID VLAN.

Une fois que le commutateur a inséré les champs d'information de contrôle des balises, il recalcule les valeurs du FCS et insère le nouveau FCS dans le cadre.

![[Pasted image 20250217191620.png]]

### 3.2.5 VLAN natifs et étiquetage 802.1Q

La norme IEEE 802.1Q spécifie un VLAN natif pour les liaisons de trunk, qui est par défaut VLAN 1. Lorsqu'une trame non balisée arrive sur un port de trunk, elle est attribué au VLAN natif. Les trames de gestion envoyées entre les commutateurs sont un exemple de trafic généralement non balisé. Si la liaison entre deux commutateurs est un trunk, le commutateur envoie le trafic non marqué sur le VLAN natif.

**Trames marquées sur le VLAN natif**

Certains périphériques prenant en charge le système de trunk ajoutent une étiquette VLAN au trafic VLAN natif. Le trafic de contrôle envoyé sur le VLAN natif ne doit pas être étiqueté. Si un port agrégé 802.1Q reçoit une trame étiquetée avec un ID de VLAN identique à celui du VLAN natif, il abandonne la trame. Par conséquent, lorsque vous configurez un port sur un commutateur Cisco, configurez les périphériques de sorte qu’ils n’envoient pas de trames étiquetées sur le VLAN natif. Les périphériques tiers qui prennent en charge les trames étiquetées sur le VLAN natif comprennent des téléphones IP, des serveurs, des routeurs et des commutateurs non-Cisco.

**Trames non marquées sur le VLAN natif**

Lorsqu’un port trunk du commutateur Cisco reçoit des trames non étiquetées (qui sont peu communes dans un réseau bien conçu), il transfère ces trames au VLAN natif. S’il n’existe aucun périphérique associé au VLAN natif (ce qui n’est pas rare) et aucun autre port trunk (ce qui n’est pas rare non plus), la trame est abandonnée. Le VLAN natif par défaut est le VLAN 1. Lorsque vous configurez un port trunk 802.1Q, un ID de VLAN (PVID) de port par défaut se voit attribuer la valeur de l’ID du VLAN natif. Tout le trafic non étiqueté entrant par le port 802.1Q ou en sortant est transféré en fonction de la valeur PVID. Par exemple, si le VLAN 99 est configuré en tant que VLAN natif, le PVID est 99 et tout le trafic non étiqueté est transféré au VLAN 99. Si le VLAN natif n’a pas été reconfiguré, la valeur PVID est définie sur le VLAN 1.

Dans la figure, le PC1 est connecté via un concentrateur à une liaison trunk 802.1Q.

![[Pasted image 20250217191643.png]]

Le PC1 envoie le trafic non étiqueté que les commutateurs associent au VLAN natif configuré sur les ports trunk et le transfère en conséquence. Le trafic étiqueté sur le trunk que reçoit le PC1 est abandonné. Ce scénario témoigne d’une conception réseau médiocre pour plusieurs raisons : elle utilise un concentrateur, un hôte est connecté à une liaison trunk et les commutateurs sont équipés de ports d’accès affectés au VLAN natif. Il illustre également la volonté de se servir des VLANs natifs comme d’un moyen de prendre en charge les scénarios existants selon la norme IEEE 802.1Q.

### 3.2.6 Étiquetage VLAN voix

Un VLAN voix distinct est nécessaire pour prendre en charge la voix sur IP (VoIP). Cela permet d'appliquer des stratégies de qualité de service (QoS) et de sécurité au trafic vocal.

Chaque téléphone IP doit être directement branché dans un port de commutation. Un hôte IP peut se connecter au téléphone IP pour obtenir une connectivité réseau également. Vous pouvez configurer un port d'accès connecté à un téléphone IP Cisco pour utiliser deux VLAN distincts : Un VLAN est destiné au trafic vocal et l'autre est un VLAN de données pour prendre en charge le trafic hôte. La liaison entre le commutateur et le téléphone IP fait office de trunk pour acheminer à la fois le trafic du VLAN voix et le trafic du VLAN de données.

Le téléphone IP Cisco contient un commutateur 10/100 intégré à trois ports. Les ports fournissent des connexions dédiées aux périphériques suivants :

- Le port 1 est connecté au commutateur ou à un autre périphérique de VoIP.
- Le port 2 est une interface 10/100 interne qui transporte le trafic du téléphone IP.
- Le port 3 (port d’accès) est connecté à un ordinateur ou autre périphérique.

Le port d'accès du commutateur envoie des paquets CDP indiquant au téléphone IP connecté d'envoyer du trafic vocal de l'une des trois manières suivantes. La méthode utilisée varie en fonction du type de trafic :

- Le trafic VLAN vocal doit être étiqueté avec une valeur de priorité de classe de service (CoS) de couche 2 appropriée
- Le trafic VLAN d'accès peut également être étiqueté avec une valeur de priorité CoS de couche 2
- Le VLAN d'accès n'est pas marqué (pas de valeur de priorité CoS de couche 2)

Dans la figure, l'ordinateur PC5 de l'élève est relié à un téléphone IP Cisco, et le téléphone est relié au commutateur S3. Le VLAN 150 est conçu pour acheminer le trafic vocal, tandis que le PC5 se trouve dans le VLAN 20, lequel est utilisé pour les données des étudiants.

![[Pasted image 20250217191702.png]]

### 3.2.7 Exemple de vérification VLAN vocal

L'exemple de sortie de la commande **show interface fa0/18 switchport** est affiché. Les zones en surbrillance dans l'exemple de sortie montrent l'interface F0/18 configurée avec un VLAN configuré pour les données (VLAN 20), et un VLAN configuré pour la voix (VLAN 150).

```
S1# show interfaces fa0/18 switchport  Name: Fa0/18Switchport: EnabledAdministrative Mode: static accessOperational Mode: static accessAdministrative Trunking Encapsulation: negotiateOperational Trunking Encapsulation: nativeNegotiation of Trunking: OffAccess Mode VLAN: 20 (student)Trunking Native Mode VLAN: 1 (default)Administrative Native VLAN tagging: enabledVoice VLAN: 150 (voice)
```

## 3.3 Configuration du VLAN
### 3.3.1 Plages VLAN sur les commutateurs Catalyst

La création de VLAN, comme la plupart des autres aspects de la mise en réseau, est une question d'entrer les commandes appropriées. Cette rubrique explique comment configurer et vérifier différents types de VLAN.

Divers commutateurs Cisco Catalyst prennent en charge des nombres de VLAN différents. Le nombre de VLAN pris en charge est suffisamment élevé pour répondre aux besoins de la plupart des entreprises. Par exemple, les commutateurs Catalyst des séries 2960 et 3650 prennent en charge plus de 4 000 VLAN. Sur ces commutateurs, les VLAN à plage normale sont numérotés de 1 à 1 005 et les VLAN à plage étendue, de 1 006 à 4 094. La figure illustre les VLAN par défaut sur un commutateur Catalyst 2960 exécutant la version 15.x de Cisco IOS.

```
Switch# show vlan briefVLAN Name              Status   Ports---- ----------------- -------  --------------------1    default           active   Fa0/1, Fa0/2, Fa0/3, Fa0/4                                Fa0/5, Fa0/6, Fa0/7, Fa0/8                                Fa0/9, Fa0/10, Fa0/11, Fa0/12                                Fa0/13, Fa0/14, Fa0/15, Fa0/16                                Fa0/17, Fa0/18, Fa0/19, Fa0/20                                Fa0/21, Fa0/22, Fa0/23, Fa0/24                                Gi0/1, Gi0/21002 fddi-default                     act/unsup1003 token-ring-default               act/unsup1004 fddinet-default                  act/unsup1005 trnet-default                    act/unsup
```

**VLAN à gamme normale**

Voici les caractéristiques des VLANs à plage normale :

- Ils sont utilisés dans tous les réseaux de petites et moyennes organisations et d'entreprises.
- Ils sont identifiés par un ID VLAN compris entre 1 et 1005.
- (Les ID 1002 à 1005 sont réservés aux VLAN Token Ring et FDDI [Fiber Distributed Data Interface].)
- Les ID 1 et 1002 à 1005 sont automatiquement créés et ne peuvent pas être supprimés.
- Les configurations sont stockées dans la mémoire flash du commutateur dans un fichier de base de données VLAN appelé vlan.dat.
- Lorsqu' il est configuré, le protocole VLAN Trunking Protocol (VTP) permet de synchroniser la base de données VLAN entre les commutateurs.

**VLAN à gamme étendue**

Voici les caractéristiques des VLANs à plage étendue :

- Ils sont utilisés par les fournisseurs de services pour desservir de multiples clients et par des entreprises mondiales suffisamment grandes pour avoir besoin d'ID de VLAN à portée étendue.
- Ils sont identifiés par un ID VLAN entre 1006 et 4094.
- Les configurations sont enregistrées, par défaut, dans la configuration en cours.
- Ils prennent en charge moins de fonctions VLAN que les VLANs à portée normale.
- Nécessite une configuration en mode transparent VTP pour prendre en charge les VLANs à portée étendue.

**Remarque:** 4096 est la limite supérieure pour le nombre de VLAN disponibles sur les commutateurs Catalyst, car il y a 12 bits dans le champ ID VLAN de l'en-tête IEEE 802.1Q.

### 3.3.2 Commandes de création de VLAN

Lors de la configuration de VLAN à portée normale, les détails de la configuration sont stockés dans la mémoire flash du commutateur dans un fichier appelé vlan.dat. La mémoire Flash est permanente et ne requiert pas la commande **copy running-config startup-config**. Cependant, comme d’autres détails sont souvent configurés sur un commutateur Cisco au moment où ces VLAN sont créés, il est recommandé d’enregistrer les modifications de la configuration en cours dans la configuration initiale.

Le tableau présente la syntaxe de la commande Cisco IOS utilisée pour ajouter un VLAN à un commutateur et lui donner un nom. Il est recommandé de nommer chaque VLAN lors de la configuration du commutateur.

|**Tâche**|**Commande IOS**|
|---|---|
|Passer en mode de configuration globale.|Switch# **configure terminal**|
|Créez un VLAN avec un numéro d'identité valide.|Switch(config)# **vlan** _vlan-id_|
|Indiquez un nom unique pour identifier le VLAN.|Switch(config-vlan)# **name** _vlan-name_|
|Repasser en mode d'exécution privilégié|Switch(config-vlan)# **end**|

### 3.3.3 Exemple de création de VLAN

Dans la topologie, l'ordinateur de l'étudiant (PC2) n'a pas encore été associé à un VLAN, mais il possède une adresse IP de 172.17.20.22, qui appartient au VLAN 20.

![[Pasted image 20250217191801.png]]

L'exemple montre comment le VLAN de l'étudiant (VLAN 20) est configuré sur le commutateur S1.

```
S1# configure terminalS1(config)# vlan 20S1(config-vlan)# name studentS1(config-vlan)# end
```

**Remarque:** En plus de la saisie d'un seul ID VLAN, il est possible de saisir une série d'ID VLAN séparés par des virgules, ou une série d'ID VLAN séparés par des traits d'union en utilisant la commande **vlan** _vlan-id_. Par exemple, l'entrée de la commande de configuration **vlan 100,102,105-107** globale créerait des VLAN 100, 102, 105, 106 et 107.

### 3.3.4 Commandes d'attribution de port VLAN

Après la création d’un VLAN, l’étape suivante consiste à lui attribuer des ports.

Le tableau présente la syntaxe permettant de définir un port comme port d'accès et de l'affecter à un VLAN. La commande **switchport mode access** est facultatif, mais fortement recommandé comme meilleure pratique de sécurité. Avec cette commande, l’interface passe en mode d’accès permanent.

|**Tâche**|**Commande IOS**|
|---|---|
|Passer en mode de configuration globale.|Switch# **configure terminal**|
|Passer en mode de configuration d'interface.|Switch(config)# **interface** _interface-id_|
|Définissez le port en mode d'accès.|Switch(config-if)# **switchport mode access**|
|Affecter le port à un réseau local virtuel.|Switch(config-if)# **switchport access vlan** _vlan-id_|
|Repasser en mode d'exécution privilégié.|Switch(config-if)# **end**|

**Remarque:** Utilisez la **interface range** commande pour configurer simultanément plusieurs interfaces.

### 3.3.5 Exemple d'attribution de port VLAN

Dans la figure, le port F0/6 sur le commutateur S1 est configuré comme un port d'accès et attribué au VLAN 20. Tout appareil connecté à ce port est associé au VLAN 20. Par conséquent, dans notre exemple, PC2 se trouve dans le VLAN 20.

![[Pasted image 20250217191827.png]]

L'exemple montre la configuration de S1 pour attribuer F0/6 au VLAN 20.

```
S1# configure terminalS1(config)# interface fa0/6S1(config-if)# switchport mode accessS1(config-if)# switchport access vlan 20S1(config-if)# end
```

Les VLAN sont configurés sur le port de commutateur, pas sur le périphérique. Le PC2 est configuré avec une adresse IPv4 et un masque de sous-réseau associés au VLAN configuré sur le port de commutateur. Dans cet exemple, il s'agit du VLAN 20. Lorsque le VLAN 20 est configuré sur d'autres commutateurs, l'administrateur réseau sait qu'il doit configurer les autres ordinateurs des élèves sur le même sous-réseau que le PC2 (172.17.20.0/24).

### 3.3.6 VLAN de données et de voix

Un port d’accès peut appartenir à un seul VLAN à la fois. Cependant, un port peut également être associé à un VLAN vocal. Par exemple, un port connecté à un téléphone IP et un périphérique final seraient associés à deux VLAN : un pour la voix et un pour les données.

Prenons l'exemple de la topologie de la figure. Le PC5 est connecté au téléphone IP Cisco, qui à son tour est connecté à l'interface FastEthernet 0/18 sur S3. Pour mettre en œuvre cette configuration, un VLAN de données et un VLAN de voix sont créés.

![[Pasted image 20250217191847.png]]

### 3.3.7 Exemple de VLAN de données et de voix

Utilisez la commande de configuration de l'interface **switchport voice vlan** _vlan-id_ pour affecter un VLAN vocal à un port.

Sur les LAN qui prennent en charge le ⁪trafic voix, la qualité de service (QoS) est aussi généralement activée. Le trafic voix doit être étiqueté en tant que trafic de confiance dès qu'il arrive sur le réseau. Utilisez la commande de configuration de l'interface **mls qos trust [cos | device cisco-phone | dscp | ip-precedence]** pour définir l'état de confiance d'une interface, et pour indiquer quels champs du paquet sont utilisés pour classer le trafic.

La configuration dans l'exemple crée les deux VLAN (c'est-à-dire VLAN 20 et VLAN 150) et affecte ensuite l'interface F0/18 de S3 comme port de commutation dans le VLAN 20. Il attribue également le trafic vocal au VLAN 150 et permet une classification QoS basée sur la classe de service (CoS) attribuée par le téléphone IP.

```
S3(config)# vlan 20S3(config-vlan)# name studentS3(config-vlan)# vlan 150S3(config-vlan)# name VOICES3(config-vlan)# exitS3(config)# interface fa0/18S3(config-if)# switchport mode accessS3(config-if)# switchport access vlan 20S3(config-if)# mls qos trust cosS3(config-if)# switchport voice vlan 150S3(config-if)# endS3#
```

**Remarque:** La mise en œuvre de la QoS dépasse le cadre de ce cours.

La commande **switchport access vlan** force la création d’un VLAN s’il n’existe pas déjà sur le commutateur. Par exemple, le VLAN 30 n'est pas présent dans la sortie du commutateur **show vlan brief**. Si la commande **switchport access vlan 30** est saisie sur n’importe quelle interface sans configuration précédente, le commutateur affiche les éléments suivants:

```
% Access VLAN does not exist. Creating vlan 30
```

### 3.3.8 Vérification des informations VLAN

Une fois qu'un VLAN est configuré, les configurations VLAN peuvent être validées à l'aide des commandes IOS de Cisco **show**.

La commande **show vlan** affiche une liste de tous les VLAN configurés. La commande **show vlan** peut également être utilisée avec des options. La syntaxe complète est **show vlan [brief** | **id** _vlan-id_ | **name** _vlan-name_ | **summary**].

Le tableau décrit les options de commande **show vlan**.

|Tâche|Option de commande|
|---|---|
|Afficher une ligne pour chaque VLAN comportant le nom du VLAN, son état et ses ports.|**brief**|
|Afficher des informations sur un VLAN identifié par un ID de VLAN. Pour _vlan-id_ la plage est de 1 à 4094.|**id** _vlan-id_|
|Afficher des informations sur un VLAN identifié par un nom de VLAN. Le _vlan-name_ est une chaîne ASCII de 1 à 32 caractères.|**name** _vlan-name_|
|Afficher un résumé sur les VLAN.|**summary**|

La commande **show vlan summary** affiche une liste de tous les VLAN configurés.

```
S1# show vlan summaryNumber of existing VLANs              : 7Number of existing VTP VLANs          : 7Number of existing extended VLANS     : 0
```

Les autres commandes utiles sont les commandes **show interfaces** _interface-id_ **switchport** et **show interfaces vlan** _vlan-id_. Par exemple, la commande **show interfaces fa0/18 switchport** peut être utilisée pour confirmer que le port FastEthernet 0/18 a été correctement attribué aux VLAN de données et de voix.

```
S1# show interfaces fa0/18 switchportName: Fa0/18Switchport: EnabledAdministrative Mode: static accessOperational Mode: static accessAdministrative Trunking Encapsulation: dot1qOperational Trunking Encapsulation: nativeNegotiation of Trunking: OffAccess Mode VLAN: 20 (student)Trunking Native Mode VLAN: 1 (default)Voice VLAN: 150Administrative private-vlan host-association: none(Output omitted)
```

### 3.3.9 Modification de l'appartenance des ports aux VLAN

Il existe plusieurs façons de modifier l’appartenance des ports aux VLAN.

Si le port d'accès du commutateur a été attribué de manière incorrecte à un VLAN, il vous suffit de saisir à nouveau la commande de configuration de l'interface **switchport access vlan** _vlan-id_ avec l'ID VLAN correct. Par exemple, supposons que Fa0/18 a été mal configuré pour être sur le VLAN 1 par défaut au lieu de VLAN 20. Pour changer le port en VLAN 20, entrez simplement **switchport access vlan 20**.

Pour modifier l'appartenance d'un port au VLAN 1 par défaut, utilisez la commande mode de configuration de l'interface **no switchport access vlan** comme indiqué.

Dans la sortie par exemple, Fa0/18 est configuré pour être sur le VLAN 1 par défaut comme confirmé par la commande **show vlan brief**.

```
S1(config)# interface fa0/18S1(config-if)# no switchport access vlanS1(config-if)# endS1#S1# show vlan briefVLAN Name                 Status    Ports---- ------------------ --------- -------------------------------1    default            active    Fa0/1, Fa0/2, Fa0/3, Fa0/4                                  Fa0/5, Fa0/6, Fa0/7, Fa0/8                                  Fa0/9, Fa0/10, Fa0/11, Fa0/12                                  Fa0/13, Fa0/14, Fa0/15, Fa0/16                                  Fa0/17, Fa0/18, Fa0/19, Fa0/20                                  Fa0/21, Fa0/22, Fa0/23, Fa0/24                                  Gi0/1, Gi0/220   student            active    1002 fddi-default       act/unsup1003 token-ring-default act/unsup1004 fddinet-default    act/unsup1005 trnet-default      act/unsup
```

Notez que le VLAN 20 est toujours actif, même si aucun port ne lui est attribué.

La sortie de **show interfaces f0/18 switchport** peut également être utilisée pour vérifier que le VLAN d'accès pour l'interface F0/18 a été réinitialisé au VLAN 1 comme indiqué dans la sortie.

```
S1# show interfaces fa0/18 switchportName: Fa0/18Switchport: EnabledAdministrative Mode: static accessOperational Mode: static accessAdministrative Trunking Encapsulation: negotiateOperational Trunking Encapsulation: nativeNegotiation of Trunking: OffAccess Mode VLAN: 1 (default)Trunking Native Mode VLAN: 1 (default)
```

### 3.3.10 Supprimer le VLAN

La commande de mode de configuration global **no vlan** _vlan-id_ est utilisée pour supprimer un VLAN du fichier switch vlan.dat.

**Attention:** Avant de supprimer un VLAN, réattribuez d'abord tous les ports membres à un VLAN différent. Tous les ports qui ne sont pas déplacés vers un VLAN actif sont incapables de communiquer avec d'autres hôtes après la suppression du VLAN et jusqu'à ce qu'ils soient attribués à un VLAN actif.

L'ensemble du fichier vlan.dat peut être supprimé à l'aide de la commande privilégiée du mode EXEC **delete flash:vlan.dat**. La version abrégée de la commande (**delete vlan.dat**) peut être utilisée si le fichier vlan.dat n'a pas été déplacé de son emplacement par défaut. Après l’exécution de cette commande et le redémarrage du commutateur, les VLAN précédemment configurés ne sont plus présents. Cette commande rétablit les paramètres d’usine par défaut du commutateur en ce qui concerne les configurations de VLAN.

**Remarque:** Pour rétablir l'état par défaut d'un commutateur Catalyst, débranchez tous les câbles, à l'exception de la console et du câble d'alimentation, du commutateur. Ensuite, entrez la commande privilégiée du mode EXEC **erase startup-config** suivie de la commande **delete vlan.dat**.

## 3.4 Trunks de VLAN
### 3.4.1 Commandes de configuration du trunk

Maintenant que vous avez configuré et vérifié les VLANs, il est temps de configurer et de vérifier les trunks VLAN. Un trunk de VLAN est un lien de couche 2 entre deux commutateurs qui achemine le trafic pour tous les VLANs (à moins que la liste des VLANs autorisés ne soit restreinte manuellement ou dynamiquement).

Pour activer les liaisons trunks, configurez les ports d'interconnexion avec l'ensemble des commandes de configuration d'interface indiquées dans le tableau.

|**Tâche**|**Commande IOS**|
|---|---|
|Passer en mode de configuration globale.|Switch# **configure terminal**|
|Passer en mode de configuration d'interface.|Switch(config)# **interface** _interface-id_|
|Réglez le port en mode de trunking permanent.|Switch(config-if)# **switchport mode trunk**|
|Choisissez un VLAN natif autre que le VLAN 1.|Switch(config-if)# **switchport trunk native vlan** _vlan-id_|
|Indiquer la liste des VLAN autorisés sur la liaison trunk.|Switch(config-if)# **switchport trunk allowed vlan** _vlan-list_|
|Repasser en mode d'exécution privilégié.|Switch(config-if)# **end**|

### 3.4.2 Exemple de configuration du trunk

Dans la figure, les VLAN 10, 20 et 30 prennent en charge les ordinateurs de la faculté, des étudiants et des invités (PC1, PC2 et PC3). Le port F0/1 du commutateur S1 est configuré en tant que port trunk et transmet le trafic pour les VLANs 10, 20 et 30. Le VLAN 99 est défini comme VLAN natif.

![[Pasted image 20250217200524.png]]

Les sous-réseaux associés à chaque VLAN sont:

- VLAN 10 - Faculté/Personnel - 172.17.10.0/24
- VLAN 20 - Étudiants - 172.17.20.0/24
- VLAN 30 - Invités - 172.17.30.0/24
- VLAN 99 - Natif - 172.17.99.0/24

L'exemple montre la configuration du port F0/1 sur le commutateur S1 en tant que port de trunk. Le VLAN natif devient le VLAN 99 et la liste des VLANs autorisés est limitée à 10, 20, 30 et 99.

```
S1(config)# interface fastEthernet 0/1S1(config-if)# switchport mode trunkS1(config-if)# switchport trunk native vlan 99S1(config-if)# switchport trunk allowed vlan 10,20,30,99S1(config-if)# end
```

**Remarque:** Cette configuration suppose l'utilisation de commutateurs Cisco Catalyst 2960 qui utilisent automatiquement l'encapsulation 802.1Q sur les liaisons trunk. D’autres commutateurs peuvent nécessiter la configuration manuelle de l’encapsulation. Configurez toujours les deux extrémités d’une liaison trunk avec le même VLAN natif. Si la configuration du trunk 802.1Q n’est pas identique à chaque extrémité, le logiciel Cisco IOS signale des erreurs.

### 3.4.3 Vérification de la configuration du trunk

La sortie du commutateur affiche la configuration du port de commutateur F0/1 sur le commutateur S1. La configuration est vérifiée à l'aide de la commande **show interfaces** _interface-ID_ **switchport**.

```
S1# show interfaces fa0/1 switchportName: Fa0/1Switchport: EnabledAdministrative Mode: trunkOperational Mode: trunkAdministrative Trunking Encapsulation: dot1qOperational Trunking Encapsulation: dot1qNegotiation of Trunking: OnAccess Mode VLAN: 1 (default)Trunking Native Mode VLAN: 99 (VLAN0099)Voice VLAN: noneAdministrative private-vlan host-association: noneAdministrative private-vlan mapping: noneAdministrative private-vlan trunk native VLAN: noneAdministrative private-vlan trunk encapsulation: dot1qAdministrative private-vlan trunk normal VLANs: noneAdministrative private-vlan trunk associations: noneAdministrative private-vlan trunk private VLANs: noneOperational private-vlan: noneTrunking VLANs Enabled: 10,20,30,99Pruning VLANs Enabled: 2-1001(output omitted)
```

La zone surlignée en haut indique que le port F0/1 a son mode administratif réglé sur **trunk**. Le port est en mode trunking. La zone surlignée suivante permet de vérifier que le VLAN natif est le VLAN 99. Plus bas dans la sortie, la zone surlignée du bas montre que les VLAN 10, 20, 30 et 99 sont activés sur le trunk.

### 3.4.4 Réinitialisation du trunk à l’état par défaut

Utilisez les commandes **no switchport trunk allowed vlan** et **no switchport trunk native vlan** pour supprimer les VLAN autorisés et réinitialiser le VLAN natif du trunk. Lorsqu'il est remis à l'état par défaut, le trunk autorise tous les VLAN et utilise le VLAN 1 comme VLAN natif. L'exemple montre les commandes utilisées pour réinitialiser toutes les caractéristiques d'une interface de liaison aux paramètres par défaut.

```
S1(config)# interface fa0/1S1(config-if)# no switchport trunk allowed vlanS1(config-if)# no switchport trunk native vlanS1(config-if)# end
```

La commande **show interfaces fa0/1 switchport** révèle que le tronc a été reconfiguré dans un état par défaut.

```
S1# show interfaces fa0/1 switchportName: Fa0/1Switchport: EnabledAdministrative Mode: trunkOperational Mode: trunkAdministrative Trunking Encapsulation: dot1qOperational Trunking Encapsulation: dot1qNegotiation of Trunking: OnAccess Mode VLAN: 1 (default)Trunking Native Mode VLAN: 1 (default)Administrative Native VLAN tagging: enabledVoice VLAN: noneAdministrative private-vlan host-association: noneAdministrative private-vlan mapping: noneAdministrative private-vlan trunk native VLAN: noneAdministrative private-vlan trunk Native VLAN tagging: enabledAdministrative private-vlan trunk encapsulation: dot1qAdministrative private-vlan trunk normal VLANs: noneAdministrative private-vlan trunk associations: noneAdministrative private-vlan trunk mappings: noneOperational private-vlan: noneTrunking VLANs Enabled: ALLPruning VLANs Enabled: 2-1001(output omitted)
```

Cet exemple de sortie montre les commandes utilisées pour supprimer la fonction de trunk du port F0/1 de l'interrupteur S1. La commande **show interfaces f0/1 switchport** révèle que l’interface F0/1 est désormais en mode d’accès statique.

```
S1(config)# interface fa0/1S1(config-if)# switchport mode accessS1(config-if)# endS1# show interfaces fa0/1 switchportName: Fa0/1Switchport: EnabledAdministrative Mode: static accessOperational Mode: static accessAdministrative Trunking Encapsulation: dot1qOperational Trunking Encapsulation: nativeNegotiation of Trunking: OffAccess Mode VLAN: 1 (default)Trunking Native Mode VLAN: 1 (default)Administrative Native VLAN tagging: enabled(output omitted)
```

## 3.5 Protocole DTP (Dynamic Trunking Protocol)
### 3.5.1 Introduction au DTP

Certains commutateurs Cisco ont un protocole propriétaire qui leur permet de négocier automatiquement la connexion avec un périphérique voisin. Ce protocole est appelé Dynamic Trunking Protocol (DTP). Le DTP peut accélérer le processus de configuration d'un administrateur réseau. Les interfaces de trunk réseau Ethernet prennent en charge différents modes de lignes réseau. Une interface peut être définie sur le trunk ou non, ou pour négocier le trunk avec l'interface voisine. La négociation de trunk est gérée par le protocole DTP (Dynamic Trunking Protocol) qui fonctionne uniquement de point à point, entre les périphériques réseau.

Le protocole DTP est un protocole appartenant à Cisco, qui est automatiquement activé sur les commutateurs Catalyst 2960 et Catalyst 3650. Il gère la négociation de trunk uniquement si le port du commutateur voisin est configuré dans un mode trunk qui prend en charge ce protocole. Il n’est pas pris en charge par les commutateurs d’autres fournisseurs.

**Attention:** Certains périphériques d'interconnexion peuvent transmettre les trames DTP de manière incorrecte, ce qui peut entraîner des erreurs de configuration. Désactivez le protocole DTP sur les interfaces du commutateur Cisco connecté aux appareils qui ne le prennent pas en charge.

La configuration DTP par défaut pour les commutateurs Cisco Catalyst 2960 et 3650 est automatique dynamique.

Pour permettre le trunking d'un commutateur Cisco vers un appareil qui ne prend pas en charge le DTP, utilisez les commandes du mode de configuration et de l'interface **switchport mode trunk** et **switchport nonegotiate**. Cela provoque l'interface pour devenir un trunk, mais il ne génère pas de trames DTP.

```
S1(config-if)# switchport mode trunkS1(config-if)# switchport nonegotiate
```

Pour réactiver le protocole de trunking dynamique, utilisez la commande **switchport mode dynamic** **auto**.

```
S1(config-if)# switchport mode dynamic auto
```

Si les ports reliant deux commutateurs sont configurés pour ignorer toutes les publicités DTP avec les commandes **switchport mode trunk** et **switchport nonegotiate**, les ports restent en mode port de trunk. Si les ports de connexion sont réglés sur auto dynamique, ils ne négocieront pas un trunk et resteront dans l'état du mode d'accès, créant ainsi une liaison de trunk inactive.

Pour configurer un port en mode trunk, utilisez la commande **switchport mode trunk**. Il n'y a alors pas d'ambiguïté sur l'état dans lequel se trouve le trunk ; il est toujours activé.

### 3.5.2 Modes d'interface négociés

La commande **switchport mode** a des options supplémentaires pour négocier le mode d'interface. La syntaxe de commande complète est la suivante:

```
  Switch(config)# switchport mode {  access | dynamic {  auto | desirable } |  trunk }
```

Les options de la commande sont décrites dans le tableau.

|**Option**|**Description**|
|---|---|
|**access**|- Met l'interface (port d'accès) en mode permanent non trunking et négocie pour convertir le lien en un lien non-trunk.<br>- L'interface devient une interface non trunking, que l'interface voisine est une interface de trunk.|
|**dynamic auto**|- Rend l'interface capable de convertir le lien en un lien trunk.<br>- L'interface devient une interface trunk si l'interface voisine est défini sur le trunk ou le mode désirable.<br>- Le mode switchport par défaut pour toutes les interfaces Ethernet est **dynamic auto**.|
|**dynamic desirable**|- Fait en sorte que l'interface tente activement de convertir le lien en un lien de trunk.<br>- L'interface devient une interface de trunk si l'interface voisine est réglé sur le mode "trunk", "desirable" ou "dynamic auto".|
|**trunk**|- Met l'interface en mode de trunk permanente et négocie pour convertir le lien voisin en lien de trunk.<br>- L'interface devient une interface trunk même si l'interface voisine n'est pas une interface trunk.|

Utilisez la commande de configuration de l'interface **switchport nonegotiate** pour arrêter la négociation DTP. Le commutateur ne s'engage pas dans la négociation DTP sur cette interface. Vous pouvez utiliser cette commande uniquement lorsque le mode de port de commutation d'interface est **access** ou **trunk**. Vous devez configurer manuellement l'interface voisine en tant qu'interface de jonction pour établir une liaison de trunk.

### 3.5.3 Résultats d'une configuration DTP

Le tableau illustre les résultats des options de configuration DTP aux extrémités opposées d'une liaison de trunk connectée aux ports de commutateur Catalyst 2960. Configurez des liaisons trunk de manière statique autant que possible.

|                       | **Dynamic Auto** | **Dynamic Desirable** | **Trunk**            | **Accès**            |
| --------------------- | ---------------- | --------------------- | -------------------- | -------------------- |
| **Dynamic Auto**      | Accès            | Trunk                 | Trunk                | Accès                |
| **Dynamic Desirable** | Trunk            | Trunk                 | Trunk                | Accès                |
| **Trunk**             | Trunk            | Trunk                 | Trunk                | Connectivité limitée |
| **Accès**             | Accès            | Accès                 | Connectivité limitée | Access               |

### 3.5.4 Vérification du mode DTP

Le mode DTP par défaut dépend de la version du logiciel Cisco IOS et de la plate-forme. Pour déterminer le mode DTP actuel, exécutez la commande **show dtp interface** comme indiqué dans la sortie.

```
S1# show dtp interface fa0/1DTP information for FastEthernet0/1:TOS/TAS/TNS: ACCESS/AUTO/ACCESSTOT/TAT/TNT: NATIVE/NEGOTIATE/NATIVENeighbor address 1: C80084AEF101Neighbor address 2: 000000000000Hello timer expiration (sec/state): 11/RUNNINGAccess timer expiration (sec/state): never/STOPPEDNegotiation timer expiration (sec/state): never/STOPPEDMultidrop timer expiration (sec/state): never/STOPPEDFSM state: S2:ACCESS# times multi & trunk 0Enabled: yesIn STP: no
```

**Remarque:** Une bonne pratique générale consiste à définir l'interface vers **trunk** et **nonegotiate** quand une liaison trunk est nécessaire. Sur les liaisons où vous ne souhaitez pas de trunking, désactivez le mode DTP.

### 3.6.3 Qu'est-ce que j'ai appris dans ce module?

**Aperçu des VLAN**

Les réseaux locaux virtuels (VLANs) sont un groupe d'appareils qui peuvent communiquer comme si chaque appareil était relié au même câble. Les VLANs reposent sur des connexions logiques au lieu de connexions physiques. Les administrateurs utilisent des VLANs pour segmenter les réseaux en fonction de facteurs tels que la fonction, l'équipe ou l'application. Chaque VLAN est considéré comme un réseau logique distinct. N'importe quel port du commutateur peut appartenir à un VLAN. Un VLAN crée un domaine de diffusion logique qui peut s'étendre sur plusieurs segments de réseau local physique. Les VLANs améliorent les performances réseau en divisant de vastes domaines de diffusion en domaines plus petits. Chaque VLAN d'un réseau commuté correspond à un réseau IP ; par conséquent, la conception de VLAN doit utiliser un système d'adressage réseau hiérarchique. Les types de VLAN incluent le VLAN par défaut, les VLAN de données, le VLAN natif, les VLAN de gestion. et les VLANs vocaux.

**VLAN dans un environnement à commutation multiple**

Un trunk VLAN n'appartient pas à un VLAN spécifique. Il s'agit d'un canal pour plusieurs VLAN entre les commutateurs et les routeurs. Un trunk VLAN est un lien point à point entre deux appareils de réseau qui transportent plus d'un VLAN. Un trunk de VLAN permet d’étendre les VLANs à l’ensemble d’un réseau. Lorsque des VLANs sont implémentés sur un commutateur, la transmission du trafic monodiffusion, multidiffusion et diffusion à partir d’un hôte figurant sur un VLAN donné est limitée aux périphériques se trouvant sur ce VLAN. Les champs de balise VLAN incluent le type, la priorité utilisateur, la CFI et le VID. Certains appareils ajoutent une balise VLAN au trafic VLAN natif. Si un port trunk 802.1Q reçoit une trame marquée avec le VID qui est le même que celui du VLAN natif, il supprime la trame. Un VLAN voix distinct est nécessaire pour prendre en charge la voix sur IP (VoIP). Les stratégies de QoS et de sécurité peuvent être appliquées au trafic vocal. Le trafic VLAN vocal doit être marqué avec une valeur de priorité CoS de couche 2 appropriée.

**Configuration VLAN**

Différents commutateurs Cisco Catalyst prennent en charge différents nombres de VLAN, y compris les VLANs à plage normale et les VLANs à plage étendue. Lors de la configuration de VLAN à portée normale, les détails de la configuration sont stockés dans la mémoire flash du commutateur dans un fichier appelé vlan.dat. Bien que ce n'est pas nécessaire, il est recommandé d'enregistrer les modifications de configuration en cours dans la configuration de démarrage. Après la création d’un VLAN, l’étape suivante consiste à lui attribuer des ports. Il existe plusieurs commandes pour définir un port comme port d'accès et l'attribuer à un VLAN. Les VLANs sont configurés sur le port du commutateur et non sur l'appareil final. Un port d'accès ne peut appartenir qu'à un seul VLAN de données à la fois. Cependant, un port peut également être associé à un VLAN vocal. Par exemple, un port connecté à un téléphone IP et à un appareil terminal serait associé à deux VLANs : un pour la voix et un pour les données. Une fois qu'un VLAN est configuré, les configurations VLAN peuvent être validées à l'aide des commandes IOS de Cisco **show**. Si le port d'accès du commutateur a été attribué de manière incorrecte à un VLAN, il vous suffit de saisir à nouveau la commande de configuration de l'interface **switchport access** **vlan** _vlan-id_ avec l'ID VLAN correct. La commande de mode de configuration global **no vlan** _vlan-id_ est utilisée pour supprimer un VLAN du fichier switch vlan.dat.

**VLAN Trunks**

Un trunk de VLAN est un lien de couche 2 OSI entre deux commutateurs qui achemine le trafic pour tous les VLAN. Il existe plusieurs commandes pour configurer les ports d'interconnexion. Pour vérifier la configuration du trunk VLAN, utilisez la commande **show interfaces** _interface-ID_ **switchport**. Utilisez les commandes **no switchport trunk allowed vlan** et**no switchport trunk native vlan** pour supprimer les VLAN autorisés et réinitialiser le VLAN natif du trunk.

**Protocole de liaison dynamique**

Une interface peut être définie sur le trunk ou non, ou pour négocier le trunk avec l'interface voisine. La négociation de trunk est gérée par le protocole DTP (Dynamic Trunking Protocol) qui fonctionne uniquement de point à point, entre les périphériques réseau. Le DTP est un protocole propriétaire de Cisco qui gère la négociation du trunk seulement si le port du commutateur voisin est configuré dans un mode de trunk qui supporte le DTP. Pour permettre le trunking d'un commutateur Cisco vers un appareil qui ne prend pas en charge le DTP, utilisez les commandes du mode de configuration et de l'interface **switchport mode trunk** et **switchport nonegotiate**. La commande **switchport mode** a des options supplémentaires pour négocier le mode d'interface, y compris l'accès, l'auto dynamique, dynamique souhaitable et le trunk. Pour vérifier le mode DTP actuel, exécutez la commande **show dtp interface**.

# Modules 4: Routage Inter-VLAN
## 4.1 Fonctionnement du routage inter-VLAN
### 4.1.1 Qu'est-ce que le routage inter-VLAN?

Les VLAN sont utilisés pour segmenter des réseaux de couche 2 commutés pour diverses raisons. Quelle que soit la raison, les hôtes d'un VLAN ne peuvent pas communiquer avec les hôtes d'un autre VLAN sauf s'il existe un routeur ou un commutateur de couche 3 pour fournir des services de routage.

Le routage inter-VLAN est un processus d'acheminement du trafic réseau d'un VLAN à un autre.

Il existe 3 options de routage inter-VLAN:

- **Routage inter-VLAN existant** - Il s'agit d'une solution ancienne. Il ne s'étend pas bien.
- **Router-on-a-Stick** - C'est une solution acceptable pour un réseau de petit à moyen taille.
- **Commutateur de couche 3 utilisant des interfaces virtuelles commutées (SVI)** - Il s'agit de la solution la plus évolutive pour les moyennes et grandes entreprises.

### 4.1.2 Routage inter-VLAN existant

la première solution de routage inter-VLAN reposait sur des routeurs dotés de plusieurs interfaces Ethernet. Chaque interface devait être connectée à un port de commutateur dans différents VLAN. Les interfaces de routeur ont servi de passerelles par défaut vers les hôtes locaux du sous-réseau VLAN.

Par exemple, reportez-vous à la topologie où R1 a deux interfaces connectées au commutateur S1.

![[Pasted image 20250217200900.png]]

Notez dans l'exemple de table d'adresses MAC de S1 est rempli comme suit:

- Le port Fa0/1 est attribué au VLAN 10 et est connecté à l'interface R1 G0/0/0.
- Le port Fa0/11 est attribué au VLAN 10 et est connecté au PC1.
- Le port Fa0/12 est attribué au VLAN 20 et est connecté à l'interface R1 G0/0/1.
- Le port Fa0/11 est attribué au VLAN 20 et est connecté au PC2.

### MAC Address table for S1

|**Port**|**Adresse MAC**|**VLAN**|
|---|---|---|
|F0/1|R1 G0/0/0 MAC|10|
|F0/11|PC1 MAC|10|
|F0/12|R1 G0/0/1 MAC|20|
|F0/24|PC 2 MAC|20|

Lorsque PC1 envoie un paquet à PC2 sur un autre réseau, il le transfère à sa passerelle par défaut 192.168.10.1. R1 reçoit le paquet sur son interface G0/0/0 et examine l'adresse de destination du paquet. R1 achemine ensuite le paquet sur son interface G0/0/1 vers le port F0/12 dans VLAN 20 sur S1. Enfin, S1 transmet la trame à PC2.

L'ancien routage inter-VLAN utilisant des interfaces physiques fonctionne, mais il présente une limitation importante. Il n'est pas raisonnablement évolutif car les routeurs ont un nombre limité d'interfaces physiques. La nécessité de posséder une interface de routeur physique par VLAN épuise rapidement la capacité du routeur.

Dans notre exemple, R1 nécessitait deux interfaces Ethernet distinctes pour acheminer entre VLAN 10 et VLAN 20. Que se passe-t-il s'il y avait six VLAN (ou plus) à interconnecter ? Une interface distincte serait requise pour chaque VLAN. Évidemment, cette solution n'est pas évolutive.

**Remarque:** Cette méthode de routage inter-VLAN n'est plus implémentée dans les réseaux commutés et est incluse à des fins d'explication uniquement.

### 4.1.3 Routage inter-VLAN avec la méthode router-on-a-stick

La méthode de routage inter-VLAN 'router-on-a-stick' surmonte la limite de la méthode de routage inter-VLAN ancienne. Il ne nécessite qu'une seule interface Ethernet physique pour acheminer le trafic entre plusieurs VLAN sur un réseau.

Une interface Ethernet de routeur Cisco IOS est configurée comme un trunk 802.1Q et connectée à un port de trunk sur un commutateur de couche 2. Plus précisément, l'interface du routeur est configurée à l'aide de sous-interfaces pour identifier les VLAN routables.

Les sous-interfaces configurées sont des interfaces virtuelles logicielles. Chacune est associée à une seule interface Ethernet physique. Les sous-interfaces sont configurées dans un logiciel sur un routeur. Chaque sous-interface est configurée indépendamment avec sa propre adresse IP et une affectation VLAN. Les sous-interfaces sont configurées pour différents sous-réseaux correspondant à une affectation VLAN. Cela facilite le routage logique.

Lorsque le trafic étiqueté VLAN entre dans l'interface du routeur, il est transféré à la sous-interface VLAN. Une fois qu'une décision de routage est prise en fonction de l'adresse du réseau IP de destination, le routeur détermine l'interface de sortie du trafic. Si l'interface de sortie est configurée en tant que sous-interface 802.1q, les trames de données sont marquées VLAN avec le nouveau VLAN et renvoyés vers l'interface physique.

Comme on le voit dans l'animation, PC1 sur VLAN 10 communique avec PC3 sur VLAN 30. Le routeur R1 accepte le trafic de monodiffusion étiqueté sur le VLAN 10 et l’achemine vers le VLAN 30 en utilisant ses sous-interfaces configurées. Le commutateur S2 supprime l’étiquette VLAN de la trame de monodiffusion et transfère la trame à PC3 sur le port F0/23.

**Remarque:** La méthode router-on-a-stick de routage inter-VLAN ne dépasse pas 50 VLAN.

### 4.1.4 Routage inter-VLAN sur un commutateur de couche 3

La méthode moderne d'exécution du routage inter-VLAN consiste à utiliser des commutateurs de couche 3 et des interfaces virtuelles commutées (SVI). Une interface SVI est une interface virtuelle configurée dans un commutateur de couche 3, comme illustré dans la figure.

**Remarque:** Un commutateur de couche 3 est également appelé commutateur multicouche car il fonctionne sur les couches 2 et 3. Cependant, dans ce cours, nous utilisons le terme commutateur de couche 3.

![[Pasted image 20250217200941.png]]

Les SVI inter-VLAN sont créés de la même manière que l'interface VLAN de gestion est configurée. Une interface SVI est créée pour chaque VLAN existant sur le commutateur. Bien que virtuel, le SVI exécute les mêmes fonctions pour le VLAN qu'une interface de routeur. Plus précisément, il assure le traitement de couche 3 des paquets vers ou depuis tous les ports de commutateur associés à ce VLAN.

Voici les avantages de l'utilisation de commutateurs de couche 3 pour le routage inter-VLAN:

- Cette méthode est beaucoup plus rapide que le modèle Router-on-a-stick, car l'ensemble de la commutation et du routage est assuré de manière matérielle.
- Il n'est pas nécessaire d'utiliser des liaisons externes entre le commutateur et le routeur pour le routage.
- Ils ne sont pas limités à une liaison, car les canaux EtherChannels de couche 2 peuvent être utilisés comme liaisons de trunk entre les commutateurs pour augmenter la bande passante.
- La latence est bien plus faible, car les données n'ont pas besoin de quitter le commutateur pour être acheminées vers un autre réseau.
- Ils sont plus souvent déployés dans un réseau local de campus que les routeurs.

Le seul inconvénient est que les commutateurs de couche 3 sont plus chers.

## 4.2 Routage inter-VLAN avec la méthode Router-on-a-stick
### 4.2.1 Le scénario Router-on-a-Stick

Dans la rubrique précédente, trois manières différentes de créer un routage inter-VLAN étaient répertoriées, et le routage inter-VLAN existant était détaillé. Cette rubrique explique en détail comment configurer inter-VLAN routeur avec la méthode Router-on-a-Stick. Vous pouvez voir dans la figure que le routeur n'est pas au centre de la topologie mais qu'il semble plutôt être sur un stick près de la bordure, d'où son nom.

Sur la figure, l'interface R1 GigabiteEthernet 0/0/1 est connectée au port S1 FastEthernet 0/5. Le port S1 FastEthernet 0/1 est connecté au port S2 FastEthernet 0/1. Il s'agit de liaisons de trunk qui sont nécessaires pour transférer le trafic à l'intérieur et entre les VLAN.

![[Pasted image 20250217201034.png]]

Pour acheminer entre VLAN, l'interface R1 GigabiteEthernet 0/0/1 est logiquement divisée en trois sous-interfaces, comme indiqué dans le tableau. Le tableau indique également les trois VLAN qui seront configurés sur les commutateurs.

### Router R1 Subinterfaces

|**Sous-interfaces**|**VLAN**|**Adresse IP**|
|---|---|---|
|G0/0/1.10|10|192.168.10.1/24|
|G0/0/1.20|20|192.168.20.1/24|
|G0/0/1.99|99|192.168.99.1/24|

Supposons que R1, S1 et S2 ont des configurations de base initiales. Actuellement, PC1 et PC2 ne peuvent **ping** les uns les autres car ils se trouvent sur des réseaux séparés. Seuls S1 et S2 peuvent **ping** les uns les autres, mais ils sont inaccessibles par PC1 ou PC2 parce qu'ils sont également sur des réseaux différents.

Pour permettre aux périphériques de ping les uns les autres, les commutateurs doivent être configurés avec des VLAN et des trunks, et le routeur doit être configuré pour le routage inter-VLAN.

### 4.2.2 Configurations de VLAN et de trunk de commutateur S1

Procédez comme suit pour configurer S1 avec des VLAN et des trunks:

![[Pasted image 20250217201110.png]]

**Étape 1**. Créez et nommez les VLAN.

Tout d'abord, les VLAN sont créés et nommés. Les VLAN ne sont créés qu'après avoir quitté le mode de sous-configuration VLAN.

```
S1(config)# vlan 10
S1(config-vlan)# name LAN10
S1(config-vlan)# exit
S1(config)# vlan 20
S1(config-vlan)# name LAN20
S1(config-vlan)# exit
S1(config)# vlan 99
S1(config-vlan)# name Management
S1(config-vlan)# exit
S1(config)#
```

**Étape 2**. Créez l'interface de gestion.
Ensuite, l'interface de gestion est créée sur VLAN 99 avec la passerelle par défaut de R1.

```
S1(config)# interface vlan 99
S1(config-if)# ip add 192.168.99.2 255.255.255.0
S1(config-if)# no shut
S1(config-if)# exit
S1(config)# ip default-gateway 192.168.99.1
S1(config)#
```

**Étape 3**. Configurez les ports d'accès.
Ensuite, le port Fa0/6 se connectant à PC1 est configuré en tant que port d'accès dans VLAN 10. Supposons que PC1 ait été configuré avec l'adresse IP correcte et la passerelle par défaut.

```
S1(config)# interface fa0/6
S1(config-if)# switchport mode access
S1(config-if)# switchport access vlan 10
S1(config-if)# no shut
S1(config-if)# exit
S1(config)#
```

**Étape 4**. Configurez les ports trunk.
Enfin, les ports Fa0/1 se connectant à S2 et Fa0/5 se connectant à R1 sont configurés en tant que ports de trunk.

```
S1(config)# interface fa0/1
S1(config-if)# switchport mode trunk
S1(config-if)# no shut
S1(config-if)# exit
S1(config)# interface fa0/5
S1(config-if)# switchport mode trunk
S1(config-if)# no shut
S1(config-if)# Fin
*Mar 1 00:23:43.093: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/1, changed state to up
*Mar 1 00:23:44.511: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/5, changed state to up
```

### 4.2.3 Configurations de VLAN et de trunk de commutateur S2

La configuration de S2 est similaire à S1.
![[Pasted image 20250217201251.png]]

```
S2(config)# vlan 10
S2(config-vlan)# name LAN10
S2(config-vlan)# exit
S2(config)# vlan 20
S2(config-vlan)# name LAN20
S2(config-vlan)# exit
S2(config)# vlan 99
S2(config-vlan)# name Management
S2(config-vlan)# exit
S2(config)#
S2(config)# interface vlan 99
S2(config-if)# ip add 192.168.99.3 255.255.255.0
S2(config-if)# no shut
S2(config-if)# exit
S2(config)# ip default-gateway 192.168.99.1
S2(config)# interface fa0/18
S2(config-if)# switchport mode access
S2(config-if)# switchport access vlan 20
S2(config-if)# no shut
S2(config-if)# exit
S2(config)# interface fa0/1
S2(config-if)# switchport mode trunk
S2(config-if)# no shut
S2(config-if)# exit
S2(config-if)# end
*Mar  1 00:23:52.137: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/1, changed state to up
```

### 4.2.4 Configuration de la sous-interface R1

La méthode «Router-on-a-Stick» impose de créer des sous-interfaces pour chaque VLAN routable.

Une sous-interface est créée à l'aide de la commande de mode de configuration globale **interface** _interface_id subinterface_id_. La syntaxe de sous-interface est l’interface physique suivie d’un point et d’un numéro de sous-interface. Bien que cela ne soit pas nécessaire, il est habituel de faire correspondre le numéro de la sous-interface avec le numéro du VLAN.

Chaque sous-interface est ensuite configurée avec les deux commandes suivantes:

- **encapsulation dot1q** _vlan_id_ **[native]** l'option - This command configures the subinterface to respond to 802.1Q encapsulated traffic from the specified _vlan-id_. The **native** mot de clé n'est ajoutée que pour définir le VLAN natif sur autre chose que VLAN 1.
- **ip address** _ip-address subnet-mask_ - Cette commande configure l'adresse IPv4 de la sous-interface. Cette adresse sert généralement de passerelle par défaut pour le VLAN identifié.

Répétez le processus pour chaque VLAN pour être routée. Une adresse IP sur un sous-réseau unique doit être affectée à chaque sous-interface de routeur pour que le routage se produise.

Lorsque toutes les sous-interfaces ont été créées, activez l'interface physique à l'aide de la commande de configuration de l'interface **no shutdown**. Si l’interface physique est désactivée, toutes les sous-interfaces sont également désactivée.

Dans la configuration suivante, les sous-interfaces R1 G0/0/1 sont configurées pour les VLAN 10, 20 et 99.

![[Pasted image 20250217201433.png]]

```
R1(config)# interface G0/0/1.10
R1(config-subif)# description Default Gateway for VLAN 10
R1(config-subif)# encapsulation dot1Q 10
R1(config-subif)# ip add 192.168.10.1 255.255.255.0
R1(config-subif)# exit
R1(config)#
R1(config)# interface G0/0/1.20
R1(config-subif)# description Default Gateway for VLAN 20
R1(config-subif)# encapsulation dot1Q 20
R1(config-subif)# ip add 192.168.20.1 255.255.255.0
R1(config-subif)# exit
R1(config)#
R1(config)# interface G0/0/1.99
R1(config-subif)# description Default Gateway for VLAN 99
R1(config-subif)# encapsulation dot1Q 99
R1(config-subif)# ip add 192.168.99.1 255.255.255.0
R1(config-subif)# exit
R1(config)#
R1(config)# interface G0/0/1
R1(config-if)# description Trunk link to S1
R1(config-if)# no shut
R1(config-if)# end
R1#
*Sep 15 19:08:47.015: %LINK-3-UPDOWN: Interface GigabitEthernet0/0/1, changed state to down*Sep 15 19:08:50.071: %LINK-3-UPDOWN: Interface GigabitEthernet0/0/1, changed state to up
*Sep 15 19:08:51.071: %LINEPROTO-5-UPDOWN: Line protocol on Interface GigabitEthernet0/0/1, changed state to upR1#
```

### 4.2.5 Vérifier la connectivité entre PC1 et PC2

La configuration router-on-a-stick est terminée après la configuration du trunk du commutateur et des sous-interfaces du routeur. La configuration peut être vérifiée à partir des hôtes, du routeur et du commutateur.

À partir d'un hôte, vérifiez la connectivité à un hôte d'un autre VLAN à l'aide de la commande **ping**. Il est conseillé de vérifier d'abord la configuration actuelle de l'adresse IP de l'hôte à l'aide de la commande d'hôte Windows **ipconfig**.

```
C:\Users\PC1> ipconfigWindows IP ConfigurationEthernet adapter Ethernet0:  Connection-specific DNS Suffix . :  Link-local IPv6 Address          : fe80::5c43:ee7c:2959:da68%6  IPv4 Address                     : 192.168.10.10  Subnet Mask                      : 255.255.255.0  Default Gateway                  : 192.168.10.1C:\Users\PC1>
```

La sortie confirme l'adresse IPv4 et la passerelle par défaut de PC1. Ensuite, utilisez **ping** pour vérifier la connectivité avec PC2 et S1, comme indiqué sur la figure. La sortie **ping** confirme que le routage inter-VLAN fonctionne correctement.

```
C:\Users\PC1> ping 192.168.20.10Pinging 192.168.20.10 with 32 bytes of data:Reply from 192.168.20.10: bytes=32 time<1ms TTL=127Reply from 192.168.20.10: bytes=32 time<1ms TTL=127Reply from 192.168.20.10: bytes=32 time<1ms TTL=127Reply from 192.168.20.10: bytes=32 time<1ms TTL=127Ping statistics for 192.168.20.10:    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss).Approximate round trip times in milli-seconds:    Minimum = 0ms, Maximum = 0ms, Average = 0msC:\Users\PC1>C:\Users\PC1> ping 192.168.99.2Pinging 192.168.99.2 with 32 bytes of data:Request timed out.Request timed out.Reply from 192.168.99.2: bytes=32 time=2ms TTL=254Reply from 192.168.99.2: bytes=32 time=1ms TTL=254 |Ping statistics for 192.168.99.2:    Packets: Sent = 4, Received = 2, Lost = 2 (50% loss).Approximate round trip times in milli-seconds:    Minimum = 1ms, Maximum = 2ms, Average = 1msC:\Users\PC1>
```

### 4.2.6 Vérification de Routage inter-VLAN avec la méthode Router-on-a-stick

En plus d'utiliser **ping** entre les périphériques, les commandes **show** suivantes peuvent être utilisées pour vérifier et dépanner la configuration du router-on-a-stick.

- **show ip route**
Vérifiez que les sous-interfaces apparaissent dans la table de routage de R1 à l'aide de la commande **show ip route**. Notez qu'il existe trois routes connectées (C) et leurs interfaces de sortie respectives pour chaque VLAN routable. La sortie confirme que les sous-réseaux, les VLAN et les sous-interfaces corrects sont actifs.

```
R1# show ip route | begin Gateway
Gateway of last resort is not set
      192.168.10.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.10.0/24 is directly connected, GigabitEthernet0/0/1.10
L        192.168.10.1/32 is directly connected, GigabitEthernet0/0/1.10
      192.168.20.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.20.0/24 is directly connected, GigabitEthernet0/0/1.20
L        192.168.20.1/32 is directly connected, GigabitEthernet0/0/1.20
      192.168.99.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.99.0/24 is directly connected, GigabitEthernet0/0/1.99
L        192.168.99.1/32 is directly connected, GigabitEthernet0/0/1.99
R1# 
```
- **show ip interface brief**
Une autre commande de routeur utile est **show ip interface brief,** comme indiqué dans la sortie. La sortie confirme que les sous-interfaces ont configuré l'adresse IPv4 correcte et qu'elles sont opérationnelles.

```
R1# show ip interface brief | include up
GigabitEthernet0/0/1   unassigned      YES unset  up                    up
Gi0/0/1.10             192.168.10.1    YES manual up                    up
Gi0/0/1.20             192.168.20.1    YES manual up                    up
Gi0/0/1.99             192.168.99.1    YES manual up                    up
R1#
```
- **show interfaces**
Les sous-interfaces peuvent être vérifiées à l'aide de la commande **show interfaces** _subinterface-id_, comme illustré.

```
R1# show interfaces g0/0/1.10
GigabitEthernet0/0/1.10 is up, line protocol is up
  Hardware is ISR4221-2x1GE, address is 10b3.d605.0301 (bia 10b3.d605.0301)
  Description: Default Gateway for VLAN 10
  Internet address is 192.168.10.1/24
  MTU 1500 bytes, BW 100000 Kbit/sec, DLY 100 usec,
     reliability 255/255, txload 1/255, rxload 1/255
  Encapsulation 802.1Q Virtual LAN, ID VLAN 10.
  ARP type: ARPA, ARP Timeout 04:00:00
  Keepalive not supported
  Last clearing of "show interface" counters never
R1#
```
- **show interfaces trunk**
La mauvaise configuration pourrait également se trouver sur le port de trunk du commutateur. Par conséquent, il est également utile de vérifier les liens de trunk actifs sur un commutateur de couche 2 en utilisant la commande **show interfaces trunk** , comme indiqué dans la sortie. La sortie confirme que la liaison vers R1 est trunking pour les VLAN requis.

**Remarque:** Bien que le VLAN 1 n'ait pas été explicitement configuré, il a été automatiquement inclus car le trafic de contrôle sur les liaisons de trunk sera toujours transféré sur le VLAN 1.

```
S1# show interfaces trunk
Port        Mode             Encapsulation  Status        Native vlan
Fa0/1       on               802.1q         trunking      1
Fa0/5       on               802.1q         trunking      1
Port        Vlans allowed on trunk
Fa0/1       1-4094
Fa0/5       1-4094
Port        Vlans allowed and active in management domain
Fa0/1       1,10,20,99
Fa0/5       1,10,20,99
Port        Vlans in spanning tree forwarding state and not pruned
Fa0/1       1,10,20,99
Fa0/5       1,10,20,99
S1#
```

## 4.3 Configurer le routage inter VLAN en utilisant les commutateurs de couche 3
### 4.3.1 Routage inter-VLAN de commutateur de couche 3

Les réseaux d'entreprise modernes utilisent rarement router-on-a-stick, car il est difficile de remplir les conditions. Dans ces très grands réseaux, les administrateurs réseau utilisent des commutateurs de couche 3 pour configurer le routage inter-VLAN.

Le routage inter-VLAN utilisant la méthode routeur-on-a-stick est simple à mettre en œuvre pour une entreprise de petite à moyenne taille. Cependant, une grande entreprise nécessite une méthode plus rapide et beaucoup plus évolutive pour fournir le routage inter-VLAN.

Les réseaux locaux de campus d'entreprise utilisent des commutateurs de couche 3 pour fournir le routage inter-VLAN. Les commutateurs de couche 3 utilisent la commutation matérielle pour obtenir des taux de traitement de paquets plus élevés que les routeurs. Les commutateurs de couche 3 sont également couramment utilisés dans les armoires de câblage de la couche de distribution d'entreprise.

Les fonctionnalités d'un commutateur de couche 3 incluent la possibilité d'effectuer les opérations suivantes:

- Route d'un VLAN à un autre à l'aide de plusieurs interfaces virtuelles commutées (SVI).
- Convertir un port de commutateur de couche 2 en interface de couche 3 (c'est-à-dire un port routé). Un port routé est similaire à une interface physique sur un routeur Cisco IOS.

Pour fournir le routage inter-VLAN, les commutateurs de couche 3 utilisent des SVI. Les SVI sont configurés à l'aide de la même commande **interface vlan** _vlan-id_ utilisée pour créer le SVI de gestion sur un commutateur de couche 2. Un SVI de couche 3 doit être créé pour chacun des VLAN routables.

### 4.3.2 Scénario de commutateur de couche 3

Sur la figure, le commutateur de couche 3, D1, est connecté à deux hôtes sur différents VLAN. PC1 est dans VLAN 10 et PC2 est dans VLAN 20, comme indiqué. Le commutateur de couche 3 fournira des services de routage inter-VLAN vers les deux hôtes.

![[Pasted image 20250217201802.png]]

Le tableau indique les adresses IP de chaque VLAN.

### D1 VLAN IP Addresses

|Interface VLAN|Adresse IP|
|---|---|
|10|192.168.10.1/24|
|20|192.168.20.1/24|

### 4.3.3 Configuration du commutateur de couche 3

Procédez comme suit pour configurer S1 avec des VLAN et des trunks:

**Étape 1**. Créez les VLAN.
Tout d'abord, créez les deux VLAN comme indiqué dans la sortie.

```
D1(config)# vlan 10
D1(config-vlan)# name LAN10
D1(config-vlan)# vlan 20
D1(config-vlan)# name LAN20
D1(config-vlan)# exit
D1(config)#
```

**Étape 2**. Créez les interfaces VLAN SVI.
**2. Créez les interfaces VLAN SVI.**

Configurez le SVI pour les VLAN 10 et 20. Les adresses IP configurées serviront de passerelles par défaut vers les hôtes dans les VLAN respectifs. Notez que les messages d'information indiquant le protocole de ligne sur les deux SVI ont été modifiés en haut.

```
D1(config)# interface vlan 10
D1(config-if)# description Default Gateway SVI for 192.168.10.0/24
D1(config-if)# ip add 192.168.10.1 255.255.255.0
D1(config-if)# no shut
D1(config-if)# exit
D1(config)#
D1(config)# int vlan 20
D1(config-if)# description Default Gateway SVI for 192.168.20.0/24
D1(config-if)# ip add 192.168.20.1 255.255.255.0
D1(config-if)# no shut
D1(config-if)# exit
D1(config)#
*Sep 17 13:52:16.053: %LINEPROTO-5-UPDOWN: Line protocol on Interface Vlan10, changed state to up
*Sep 17 13:52:16.160: %LINEPROTO-5-UPDOWN: Line protocol on Interface Vlan20, changed state to up
```

**Étape 3**. Configurez les ports d'accès.
Ensuite, configurez les ports d'accès se connectant aux hôtes et affectez-les à leurs VLAN respectifs.

```
D1(config)# interface GigabiteThernet1/0/6
D1(config-if)# description Access port to PC1
D1(config-if)# switchport mode access
D1(config-if)# switchport access vlan 10
D1(config-if)# exit
D1(config)#
D1(config)# interface GigabiteThernet1/0/18
D1(config-if)# description Access port to PC2
D1(config-if)# switchport mode access
D1(config-if)# switchport access vlan 20
D1(config-if)# exit
```

**Étape 4**. Activation du routage IP.
Enfin, activez le routage IPv4 avec la commande de configuration globale **ip routing** pour permettre l'échange de trafic entre les VLAN 10 et 20. Cette commande doit être configurée pour activer le routage inter-VLAN sur un commutateur de couche 3 pour IPv4.

```
D1(config)# Routage d'adresse IP
D1(config)#
```

### 4.3.4 Vérification du routage inter-VLAN des commutateurs de couche 3

Le routage inter-VLAN à l'aide d'un commutateur de couche 3 est plus simple à configurer que la méthode routeur-on-a-stick. Une fois la configuration est terminée, la configuration peut être vérifiée en testant la connectivité entre les hôtes.

À partir d'un hôte, vérifiez la connectivité à un hôte d'un autre VLAN à l'aide de la commande **ping**. Il est conseillé de vérifier d'abord la configuration actuelle de l'adresse IP de l'hôte à l'aide de la commande d'hôte Windows **ipconfig**. La sortie confirme l'adresse IPv4 et la passerelle par défaut de PC1.

```
C:\Users\PC1> ipconfigWindows IP ConfigurationEthernet adapter Ethernet0:  Connection-specific DNS Suffix . :  Link-local IPv6 Address          : fe80::5c43:ee7c:2959:da68%6  IPv4 Address                     : 192.168.10.10  Subnet Mask                      : 255.255.255.0  Default Gateway                  : 192.168.10.1C:\Users\PC1>
```

Ensuite, vérifiez la connectivité avec PC2 à l'aide de la commande d'hôte de Windows **ping** , comme indiqué dans la sortie. La sortie **ping** confirme que le routage inter-VLAN fonctionne correctement.

```
C:\Users\PC1> ping 192.168.20.10
Pinging 192.168.20.10 with 32 bytes of data:Reply from 192.168.20.10: bytes=32 time<1ms TTL=127Reply from 192.168.20.10: bytes=32 time<1ms TTL=127Reply from 192.168.20.10: bytes=32 time<1ms TTL=127Reply from 192.168.20.10: bytes=32 time<1ms TTL=127Ping statistics for 192.168.20.10:    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss),Approximate round trip times in milli-seconds:    Minimum = 0ms, Maximum = 0ms, Average = 0msC:\Users\PC1>
```

### 4.3.5 Routage sur un commutateur de couche 3

Si les VLAN doivent être accessibles par d'autres périphériques de couche 3, ils doivent être annoncés à l'aide d'un routage statique ou dynamique. Pour activer le routage sur un commutateur de couche 3, un port routé doit être configuré.

Un port routé est créé sur un commutateur de couche 3 en désactivant la fonction de port de commutation sur un port de couche 2 connecté à un autre périphérique de couche 3. Plus précisément, la configuration de la commande de configuration de l'interface **no switchport** sur un port de couche 2 la convertit en interface de couche 3. Ensuite, l'interface peut être configurée avec une configuration IPv4 pour se connecter à un routeur ou à un autre commutateur de couche 3.

### 4.3.6 Scénario de routage sur un commutateur de couche 3

Dans la figure, le commutateur D1 de couche 3 configuré précédemment est maintenant connecté à R1. R1 et D1 sont tous les deux dans un domaine de protocole de routage OSPF (Open Shortest Path First). Supposons qu'inter-VLAN a été implémenté avec succès sur D1. L'interface G0/0/1 de R1 a été également configurée et activée. En outre, R1 utilise OSPF pour annoncer ses deux réseaux, 10.10.10.0/24 et 10.20.20.0/24.

**Remarque:** La configuration du routage OSPF est abordée dans un autre cours. Dans ce module, les commandes de configuration OSPF vous seront données dans toutes les activités et les évaluations. Il n'est pas nécessaire que vous compreniez la configuration pour activer le routage OSPF sur le commutateur de couche 3.

![[Pasted image 20250217201953.png]]

### 4.3.7 Configuration du routage sur un commutateur de couche 3

Effectuez les étapes suivantes pour configurer D1 afin de router vers R1 :

**Étape 1**. Configurez le port routé.
Configurez G1/0/1 comme port routé, affectez-lui une adresse IPv4 et activez-le.

```
D1(config)# interface GigabitEthernet1/0/1
D1(config-if)# description routed Port Link to R1
D1(config-if)# no switchport
D1(config-if)# ip address 10.10.10.2 255.255.255.0
D1(config-if)# no shut
D1(config-if)# exit
D1(config)#
```

**Étape 2**. Activez le routage.
Assurez-vous que le routage IPv4 est activé avec la commande de configuration globale **ip routing**.

```
D1(config)# ip routing
D1(config)#
```

**Étape 3**. Configurez le routage.
Configurez le protocole de routage OSPF pour annoncer les réseaux VLAN 10 et VLAN 20, ainsi que le réseau connecté à R1. Remarquez le message vous informant qu'une contiguïté a été établie à R1.

```
D1(config)# router ospf 10
D1(config-router)# network 192.168.10.0 0.0.0.255 area 0
D1(config-router)# network 192.168.20.0 0.0.0.255 area 0
D1(config-router)# network 10.10.10.0 0.0.0.3 area 0
D1(config-router)# ^Z
D1#
*Sep 17 13:52:51.163 :%OSPF-5-ADJCHG: Process 10, Nbr 10.20.20.1 sur GigabiteThernet1/0/1 de CHARGEMENT à FULL, Chargement terminé
D1#
```

**Étape 4**. Vérifiez le routage.
Vérifiez la table de routage de R1. Notez que D1 a maintenant une route vers le réseau 10.20.0/24.

```
D1# show ip route | begin Gateway
Gateway of last resort is not set
      10.0.0.0/8 is variably subnetted, 3 subnets, 3 masks
C        10.10.10.0/30 is directly connected, GigabitEthernet0/0/1
L        10.10.10.2/32 is directly connected, GigabitEthernet0/0/1
O        10.10.20.0/24 [110/2] via 10.10.10.1, 00:00:06, GigabitEthernet0/0/1
      192.168.10.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.10.0/24 is directly connected, Vlan10
L        192.168.10.1/32 is directly connected, Vlan10
      192.168.20.0/24 is variably subnetted, 2 subnets, 2 masks
C        192.168.20.0/24 is directly connected, Vlan20
L        192.168.20.1/32 is directly connected, Vlan20
D1#
```

**Étape 5**. Vérifiez la connectivité.
En ce moment, PC1 et PC2 sont capables d'envoyer une requête ping au serveur connecté à R1.

```
c:usersPC1> ping 10.20.20.254
Pinging 10.20.20.254 with 32 bytes of data: 
Request timed out.
Reply from 10.20.20.254: bytes=32 time<1ms TTL=127
Reply from 10.20.20.254: bytes=32 time<1ms TTL=127
Reply from 10.20.20.254: bytes=32 time<1ms TTL=127
Ping statistics for 10.20.20.254:
    Packets: Sent = 4, Received = 3, Lost = 1 (25% loss).
Approximate round trip times in milli-seconds: 
    Minimum = 1ms, Maximum = 2ms, Average = 1ms 
C:\Users\PC1>
! ======================================================
C:\Users\PC2> ping 10.20.20.254
Pinging 10.20.20.254 with 32 bytes of data: 
Reply from 10.20.20.254: bytes=32 time<1ms TTL=127
Reply from 10.20.20.254: bytes=32 time<1ms TTL=127
Reply from 10.20.20.254: bytes=32 time<1ms TTL=127
Reply from 10.20.20.254: bytes=32 time<1ms TTL=127
Ping statistics for 10.20.20.254:
    Packets: Sent = 4, Received = 4, Lost = 0 (0% loss).
Approximate round trip times in milli-seconds: 
    Minimum = 1ms, Maximum = 2ms, Average = 1ms
C:\Users\PC2> 
```

## 4.4 Dépannage du routage inter-VLAN
### 4.4.1 Problèmes communs d'inter-VLAN

Maintenant, vous savez que lorsque vous configurez et vérifiez, vous devez également être en mesure de dépanner. Cette rubrique traite de certains problèmes réseau courants associés au routage inter-VLAN.

Il existe un certain nombre de raisons dont la configuration inter-VLAN ne peut pas fonctionner. Tous sont liés à des problèmes de connectivité. Tout d'abord, vérifiez la couche physique pour résoudre les problèmes liés à la connexion d'un câble au mauvais port. Si les connexions sont correctes, utilisez la liste du tableau pour d'autres raisons courantes pour lesquelles la connectivité inter-VLAN peut défaillir.

|**Type de problème**|**Comment résoudre les problèmes**|**Procédure de vérification**|
|---|---|---|
|VLAN manquants|- Créez (ou recréez) le VLAN s'il n'existe pas.<br>- Assurez-vous que le port hôte est affecté au VLAN correct.|**show vlan [brief]**  <br>**show interfaces switchport**  <br>**ping**|
|Problèmes de port de trunk de commutateur|- Assurez-vous que les trunks sont correctement configurés.<br>- Assurez-vous que le port est un port de trunk et activé.|**show interfaces trunk**  <br>**show running-config**|
|Problèmes liés aux ports de commutateur|- Attribuez le port au correct VLAN.<br>- Assurez-vous que le port est un port d'accès et activé.<br>- L'hôte n'est pas correctement configuré dans le mauvais sous-réseau.|**show interfaces switchport**  <br>**show running-config interface**  <br>**ipconfig**|
|Problèmes de configuration du routeur|- L'adresse IPv4 de la sous-interface du routeur est mal configurée.<br>- La sous-interface du routeur est affectée à l'ID du VLAN.|**show ip interface brief**  <br>**show interfaces**|

### 4.4.2 Scénario de dépannage du routage inter-VLAN

Des exemples de certains de ces problèmes de routage inter-VLAN seront maintenant abordés plus en détail.

Cette topologie sera utilisée pour tous ces problèmes.
![[Pasted image 20250217202130.png]]

Les informations d'adressage VLAN et IPv4 pour R1 sont indiquées dans le tableau.

### Router R1 Subinterfaces

|**Sous-interfaces**|**VLAN**|**Adresse IP**|
|---|---|---|
|G0/0/0.10|10|192.168.10.1/24|
|G0/0/0.20|20|192.168.20.1/24|
|G0/0/0.30|99|192.168.99.1/24|

### 4.4.3 VLAN manquants

Un problème de connectivité inter-VLAN peut être causé par un VLAN manquant. Le VLAN peut être manquant s'il n'a pas été créé, s'il a été accidentellement supprimé ou s'il n'est pas autorisé sur le lien de trunk.

Par exemple, PC1 est actuellement connecté au VLAN 10, comme indiqué dans la sortie de commande **show vlan brief**.

```
S1# show vlan briefVLAN Name                             Status    Ports---- -------------------------------- --------- -------------------------------1    default                          active    Fa0/2, Fa0/3, Fa0/4, Fa0/7                                                Fa0/8, Fa0/9, Fa0/10, Fa0/11                                                Fa0/12, Fa0/13, Fa0/14, Fa0/15                                                Fa0/16, Fa0/17, Fa0/18, Fa0/19                                                Fa0/20, Fa0/21, Fa0/22, Fa0/23                                                Fa0/24, Gi0/1, Gi0/210   LAN10                            active    Fa0/620   LAN20                            active99   Management                       active1002 fddi-default                     act/unsup1003 token-ring-default               act/unsup1004 fddinet-default                  act/unsup1005 trnet-default                    act/unsupS1#
```

Supposons maintenant que VLAN 10 est accidentellement supprimé, comme indiqué dans la sortie suivante.

```
S1(config)# no vlan 10S1(config)# do show vlan briefVLAN Name                             Status    Ports---- -------------------------------- --------- -------------------------------1    default                          active    Fa0/2, Fa0/3, Fa0/4, Fa0/7                                                Fa0/8, Fa0/9, Fa0/10, Fa0/11                                                Fa0/12, Fa0/13, Fa0/14, Fa0/15                                                Fa0/16, Fa0/17, Fa0/18, Fa0/19                                                Fa0/20, Fa0/21, Fa0/22, Fa0/23                                                Fa0/24, Gi0/1, Gi0/220   LAN20                            active99   Management                       active1002 fddi-default                     act/unsup1003 token-ring-default               act/unsup1004 fddinet-default                  act/unsup1005 trnet-default                    act/unsupS1(config)#
```

Notez que VLAN 10 est maintenant absent de la sortie. Notez également que le port Fa0/6 n'a pas été réaffecté au VLAN par défaut. Car lorsque vous supprimez un VLAN, tous les ports attribués à ce VLAN deviennent inactifs. Ils restent associés au VLAN (et sont par conséquent inactifs) jusqu'à ce que vous les attribuiez à un autre VLAN ou recréez le VLAN manquant.

Utilisez la commande **show interface** _interface-id_ **switchport** pour vérifier l'appartenance au VLAN.

```
S1(config)# do show interface fa0/6 switchportName: Fa0/6Switchport: EnabledAdministrative Mode: static accessOperational Mode: static accessAdministrative Trunking Encapsulation: dot1qOperational Trunking Encapsulation: nativeNegotiation of Trunking: OffAccess Mode VLAN: 10 (Inactive)Trunking Native Mode VLAN: 1 (default)Administrative Native VLAN tagging: enabledVoice VLAN: none(Output omitted)
```

La recréation du VLAN manquant lui réaffecterait automatiquement les hôtes, comme indiqué dans la sortie suivante.

```
S1(config)# vlan 10S1(config-vlan)# do show vlan briefVLAN Name                             Status    Ports---- -------------------------------- --------- -------------------------------1    default                          active    Fa0/2, Fa0/3, Fa0/4, Fa0/7                                                Fa0/8, Fa0/9, Fa0/10, Fa0/11                                                Fa0/12, Fa0/13, Fa0/14, Fa0/15                                                Fa0/16, Fa0/17, Fa0/18, Fa0/19                                                Fa0/20, Fa0/21, Fa0/22, Fa0/23                                                Fa0/24, Gi0/1, Gi0/220   LAN20                            active99   Management                       active1002 fddi-default                     act/unsup1003 token-ring-default               act/unsup1004 fddinet-default                  act/unsup1005 trnet-default                    act/unsupS1(config-vlan)#
```

Notez que le VLAN n'a pas été créé comme prévu. La raison est que vous devez quitter le mode de sous-configuration VLAN pour créer le VLAN, comme indiqué dans la sortie suivante.

```
S1(config-vlan)# exitS1(config)# vlan 10S1(config)# do show vlan briefVLAN Name                             Status    Ports---- -------------------------------- --------- -------------------------------1    default                          active    Fa0/2, Fa0/3, Fa0/4, Fa0/7                                                Fa0/8, Fa0/9, Fa0/10, Fa0/11                                                Fa0/12, Fa0/13, Fa0/14, Fa0/15                                                Fa0/16, Fa0/17, Fa0/18, Fa0/19                                                Fa0/20, Fa0/21, Fa0/22, Fa0/23                                                Fa0/24, Gi0/1, Gi0/210   VLAN0010                         active    Fa0/620   LAN20                            active99   Management                       active1002 fddi-default                     act/unsup1003 token-ring-default               act/unsup1004 fddinet-default                  act/unsup1005 trnet-default                    act/unsupS1(config)#
```

Notez maintenant que le VLAN est inclus dans la liste et que l'hôte connecté à Fa0/6 est sur VLAN 10.

### 4.4.4 Problèmes de port de trunk de commutateur

Un autre problème pour le routage inter-VLAN inclut des ports de commutateur mal configurés. Dans une solution inter-VLAN existant, cela peut se produire lorsque le port du routeur de connexion n'est pas affecté au VLAN correct.

Cependant, avec la solution router-on-a-stick, la cause la plus fréquente est un port de trunk mal configuré.

Par exemple, supposons que PC1 était en mesure de se connecter à des hôtes dans d'autres VLAN jusqu'à récemment. Un rapide coup d'œil aux journaux de maintenance a révélé que le commutateur S1 de la couche 2 a récemment été consulté pour une maintenance de routine. Par conséquent, vous pensez que le problème peut être lié à ce commutateur.

![[Pasted image 20250217202208.png]]

Sur S1, vérifiez que le port se connectant à R1 (c'est-à-dire F0/5) est correctement configuré en tant que liaison de trunk à l'aide de la commande **show interfaces trunk** , comme indiqué.

```
S1# show interfaces trunkPort        Mode             Encapsulation  Status        Native vlanFa0/1       on               802.1q         trunking      1Port        Vlans allowed on trunkFa0/1       1-4094Port        Vlans allowed and active in management domainFa0/1       1,10,20,99Port        Vlans in spanning tree forwarding state and not prunedFa0/1       1,10,20,99S1#
```

Le port Fa0/5 se connectant à R1 est mystérieusement manquant de la sortie. Vérifiez la configuration de l'interface à l'aide de la commande **show running-config interface fa0/5** , comme illustré.

```
S1# show running-config | include interface fa0/5
Building configuration...
Current configuration : 96 bytes
!
interface FastEthernet0/5
description Trunk link to R1
switchport mode trunkshutdown
end
S1#
```

Comme vous pouvez le voir, le port a été accidentellement arrêté. Pour corriger le problème, réactivez le port et vérifiez l'état de la liaison, comme indiqué dans la sortie.

```
S1(config)# interface fa0/5
S1(config-if)# no shut
S1(config-if)#
*Mar  1 04:46:44.153: %LINK-3-UPDOWN: Interface FastEthernet0/5, changed state to upS1(config-if)#*Mar  1 04:46:47.962: %LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/5, changed state to upS1(config-if)# do show interface trunkPort        Mode             Encapsulation  Status        Native vlanFa0/1       on               802.1q         trunking      1
Fa0/5       on               802.1q         trunking      1
Port        Vlans allowed on trunk
Fa0/1       1-4094
Fa0/5       1-4094Port        Vlans allowed and active in management domainFa0/1       1,10,20,99
Fa0/5       1,10,20,99Port        Vlans in spanning tree forwarding state and not pruned
Fa0/1       1,10,20,99
Fa0/1       1,10,20,99
S1(config-if)#
```

Pour limiter le risque de perturbation du routage inter-VLAN dû à une une liaison inter-commutateur défaillante, les liaisons redondantes et les chemins alternatifs doivent faire partie de la conception du réseau.

### 4.4.5 Problèmes liés aux ports de commutateur

Lorsque vous suspectez un problème avec une configuration de port d’accès du commutateur, utilisez les diverses commandes de vérification pour examiner la configuration et identifier le problème.

Supposons que PC1 possède l'adresse IPv4 correcte et la passerelle par défaut, mais ne peut pas **ping** sa propre passerelle par défaut. PC1 est supposé être connecté à un port VLAN 10.

![[Pasted image 20250217202406.png]]

Vérifiez la configuration du port sur S1 à l'aide de la commande **show interfaces** _interface-id_ **switchport**.

```
S1# show interface fa0/6 switchport
Name: Fa0/6
Switchport: Enabled
Administrative Mode: static access
Operational Mode: static access
Administrative Trunking Encapsulation: dot1q
Operational Trunking Encapsulation: native
Negotiation of Trunking: Off
Access Mode VLAN: 1 (default)
Trunking Native Mode VLAN: 1 (default)
Administrative Native VLAN tagging: enabled
Voice VLAN: none
```

Le port Fa0/6 a été configuré comme port d'accès comme indiqué par «accès statique». Cependant, il semble qu'il n'ait pas été configuré pour être dans VLAN 10. Vérifiez la configuration de l'interface.

```
S1# show running-config interface fa0/6
Building configuration...
Current configuration : 87 bytes
!
interface FastEthernet0/6
description PC-A access port
switchport mode accessend
S1#
```

Attribuez le port Fa0/6 au VLAN 10 et vérifiez l'affectation du port.

```
S1# configure terminal
S1(config)# interface fa0/6
S1(config-if)# switchport access vlan 10
S1(config-if)#
S1(config-if)# do show interface fa0/6 switchport
Name: Fa0/6
Switchport: Enabled
Administrative Mode: static access
Operational Mode: static access
Administrative Trunking Encapsulation: dot1q
Operational Trunking Encapsulation: native
Negotiation of Trunking: Off
Access Mode VLAN: 10 (VLAN0010)
Trunking Native Mode VLAN: 1 (default)
Administrative Native VLAN tagging: enabled
Voice VLAN: none(Output omitted)
```

PC1 est désormais en mesure de communiquer avec des hôtes situés sur d'autres VLAN.

  
### 4.4.6 Problèmes de configuration du routeur

Les problèmes de configuration du router-on-a-stick sont généralement liés à des erreurs de configuration de sous-interface. Par exemple, une adresse IP incorrecte a été configurée ou un ID VLAN incorrect a été attribué à la sous-interface.

Par exemple, R1 doit fournir le routage inter-VLAN pour les utilisateurs dans les VLAN 10, 20 et 99. Toutefois, les utilisateurs du VLAN 10 ne peuvent pas atteindre d'autres VLAN.

![[Pasted image 20250217202642.png]]

Vous avez vérifié la liaison de trunk du commutateur et tout semble être en ordre. Vérifiez l'état de la sous-interface à l'aide de la commande **show ip interface brief**.

```
R1# show ip interface briefInterface              IP-Address      OK? Method Status                ProtocolGigabitEthernet0/0/0   unassigned      YES unset  administratively down downGigabitEthernet0/0/1   unassigned      YES unset  up                    upGi0/0/1.10             192.168.10.1    YES manual up                    upGi0/0/1.20             192.168.20.1    YES manual up                    upGi0/0/1.99             192.168.99.1    YES manual up                    upSerial0/1/0            unassigned      YES unset  administratively down downSerial0/1/1            unassigned      YES unset  administratively down downR1#
```

Les sous-interfaces ont reçu les adresses IPv4 correctes et elles sont opérationnelles.

Vérifiez quels VLAN chacun des sous-interfaces est sous tension. Pour cela, la commande **show interfaces** est utile mais elle génère beaucoup de sortie supplémentaire non requise. La sortie de commande peut être réduite à l'aide des filtres de commande IOS comme indiqué dans la sortie.

```
R1# show interfaces | include Gig|802.1QGigabitEthernet0/0/0 is administratively down, line protocol is downGigabitEthernet0/0/1 is up, line protocol is up  Encapsulation 802.1Q Virtual LAN, Vlan ID  1., loopback not setGigabitEthernet0/0/1.10 is up, line protocol is up  Encapsulation 802.1Q Virtual LAN, Vlan ID  100.GigabitEthernet0/0/1.20 is up, line protocol is up  Encapsulation 802.1Q Virtual LAN, Vlan ID  20.GigabitEthernet0/0/1.99 is up, line protocol is up  Encapsulation 802.1Q Virtual LAN, Vlan ID  99.R1#
```

Le symbole (|) ainsi que certains mots-clés sélectionnés sont une méthode utile pour aider à filtrer la sortie de la commande. Dans cet exemple, le mot-clé **include** a été utilisé pour identifier que seules les lignes contenant les lettres «Gig» ou «802.1Q» seront affichées. En raison de la façon dont la sortie **show interface** est naturellement répertoriée, l'utilisation de ces filtres produit une liste condensée d'interfaces et de leurs VLAN assignés.

Notez que l'interface G0/0/1. Numéro 10 a été mal affectée au VLAN 100 au lieu de VLAN 10. Ceci est confirmé en regardant la configuration de la sous-interface R1 Gigabitethernet 0/0/1.10, comme illustré.

```
R1# show running-config interface g0/0/1.10Building configuration...Current configuration : 146 bytes!interface GigabitEthernet0/0/1.10description Default Gateway for VLAN 10encapsulation dot1Q 100ip address 192.168.10.1 255.255.255.0endR1#
```

Pour résoudre ce problème, configurez la sous-interface G0/0. Numéro 10 pour qu'elle soit sur le VLAN correct à l'aide de la commande **encapsulation dot1q 10** de mode de configuration.

```
R1# conf tEnter configuration commands, one per line.  End with CNTL/Z.R1(config)# interface gigabitEthernet 0/0/1.10R1(config-subif)# encapsulation dot1Q 10R1(config-subif)# endR1#R1# show interfaces | include Gig|802.1QGigabitEthernet0/0/0 is administratively down, line protocol is downGigabitEthernet0/0/1 is up, line protocol is up  Encapsulation 802.1Q Virtual LAN, Vlan ID  1., loopback not setGigabitEthernet0/0/1.10 is up, line protocol is up  Encapsulation 802.1Q Virtual LAN, Vlan ID  10.GigabitEthernet0/0/1.20 is up, line protocol is up  Encapsulation 802.1Q Virtual LAN, Vlan ID  20.GigabitEthernet0/0/1.99 is up, line protocol is upR1#  
```

Lorsque la sous-interface a été affectée au VLAN correct, elle est accessible par des périphériques de ce VLAN et le routeur peut assurer le routage inter-VLAN.

Une vérification appropriée permet de traiter rapidement les problèmes de configuration du routeur, ce qui permet au routage inter-VLAN de fonctionner à nouveau correctement.

### 4.5.3 Qu'est-ce que j'ai appris dans ce module?

**Fonctionnement du routage inter-VLAN**

Les hôtes d'un VLAN ne peuvent pas communiquer avec les hôtes d'un autre VLAN sauf s'il existe un routeur ou un commutateur de couche 3 pour fournir des services de routage. Le routage inter-VLAN est un processus d'acheminement du trafic réseau d'un VLAN à un autre. Trois options comprennent le commutateur hérité, le routeur sur une clé et le commutateur de couche 3 à l'aide de SVI. le commutateur hérité utilisait un routeur avec plusieurs interfaces Ethernet. Chaque interface devait être connectée à un port de commutateur dans différents VLAN. La nécessité de posséder une interface de routeur physique par VLAN épuise rapidement la capacité du routeur. La méthode de routage inter-VLAN «routeur-on-a-stick» nécessite uniquement une interface Ethernet physique pour acheminer le trafic entre plusieurs VLAN sur un réseau. Une interface Ethernet de routeur Cisco IOS est configurée comme un trunk 802.1Q et connectée à un port de trunk sur un commutateur de couche 2. L'interface du routeur est configurée à l'aide de sous-interfaces pour identifier les VLAN routables. Les sous-interfaces configurées sont des interfaces virtuelles basées sur un logiciel, associées à une interface physique unique. La méthode moderne est le routage inter-VLAN sur un commutateur de couche 3 à l'aide de SVI. Une interface SVI est créée pour chaque VLAN existant sur le commutateur. Le SVI exécute les mêmes fonctions pour le VLAN qu'une interface de routeur. Il assure le traitement des paquets de couche 3 vers ou depuis tous les ports de commutateur associés à ce VLAN.

**Routage inter-VLAN avec la méthode Router-on-a-stick**

Pour configurer un commutateur avec des VLAN et des trunks, procédez comme suit: créez et nommez les VLAN, créez l'interface de gestion, configurez les ports d'accès et configurez les ports de trunk. La méthode «Router-on-a-Stick» impose de créer des sous-interfaces pour chaque VLAN routable. Une sous-interface est créée à l'aide de la commande de mode de configuration global **interface** _interface_id subinterface_id_. Une adresse IP sur un sous-réseau unique doit être affectée à chaque sous-interface de routeur pour que le routage se produise. Lorsque toutes les sous-interfaces ont été créées, l'interface physique doit être activée à l'aide de la commande de configuration de l'interface **no shutdown**. À partir d'un hôte, vérifiez la connectivité à un hôte d'un autre VLAN à l'aide de la commande **ping**. Utilisez **ping** pour vérifier la connectivité avec l'hôte et le commutateur. Pour vérifier et résoudre les problèmes utilisez les commandes **show ip route**, **show ip interface brief**, **show interfaces** et **show interfaces trunk**.

**Configurer le routage inter VLAN en utilisant les commutateurs de couche 3.**

Les réseaux locaux de campus d'entreprise utilisent des commutateurs de couche 3 pour fournir le routage inter-VLAN. Les commutateurs de couche 3 utilisent la commutation matérielle pour obtenir des taux de traitement de paquets plus élevés que les routeurs. Les fonctionnalités d'un commutateur de couche 3 comprennent le routage d'un VLAN à un autre en utilisant plusieurs interfaces virtuelles commutées (SVI) et la conversion d'un port de commutateur de couche 2 en une interface de couche 3 (c'est-à-dire un port routé). Pour fournir le routage inter-VLAN, les commutateurs de couche 3 utilisent des SVI. Les SVI sont configurés à l'aide de la même commande d'interface de vlan vlan-id utilisée pour créer le SVI de gestion sur un commutateur de couche 2. Un SVI de couche 3 doit être créé pour chacun des VLAN routables. Pour configurer un commutateur avec VLAN et trunking, procédez comme suit: créez le VLAN, créez les interfaces VLAN SVI, configurez les ports d'accès et activez le routage IP. À partir d'un hôte, vérifiez la connectivité à un hôte d'un autre VLAN à l'aide de la commande **ping**. Ensuite, vérifiez la connectivité avec l'hôte à l'aide de la commande d'hôte de Windows **ping**. Les VLAN doivent être annoncés à l'aide d'un routage statique ou dynamique. Pour activer le routage sur un commutateur de couche 3, un port routé doit être configuré. Un port routé est créé sur un commutateur de couche 3 en désactivant la fonction de port de commutation sur un port de couche 2 connecté à un autre périphérique de couche 3. L'interface peut être configurée avec une configuration IPv4 pour se connecter à un routeur ou à un autre commutateur de couche 3. Pour configurer un commutateur de couche 3 pour qu'il route avec un routeur, procédez comme suit: configurez le port routé, activez le routage, configurez le routage, vérifiez le routage et vérifiez la connectivité.

**Dépannage du routage inter-VLAN**

Il existe un certain nombre de raisons dont la configuration inter-VLAN ne peut pas fonctionner. Tous sont liés à des problèmes de connectivité tels que des VLAN manquants, des problèmes de port de trunk de commutateur, des problèmes de port d'accès au commutateur et des problèmes de configuration du routeur. Un VLAN peut être manquant s'il n'a pas été créé, s'il a été supprimé accidentellement ou s'il n'est pas autorisé sur le lien de liaison. Un autre problème pour le routage inter-VLAN inclut des ports de commutateur mal configurés. Dans une solution inter-VLAN existant, un port de commutateur mal configuré peut être causé lorsque le port du routeur de connexion n'est pas affecté au VLAN correct. Avec la solution router-on-a-stick, la cause la plus fréquente est un port de trunk mal configuré. Lorsqu'un problème est suspecté avec une configuration de port d'accès de commutateur, utilisez les commandes **ping** et **show interfaces** _interface-id_ **switchport** pour identifier le problème. Les problèmes de configuration de routeur avec les configurations de router-on-a-stick sont généralement liés à des erreurs de configuration de sous-interface. Vérifiez l'état de la sous-interface à l'aide de la commande **show ip interface brief**.