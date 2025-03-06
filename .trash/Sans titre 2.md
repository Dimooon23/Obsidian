Voici le contenu en Markdown pour Obsidian, incluant désormais les liens vers les images, avec les réponses mises en **gras** :

---

# Modules 1 – 4

---

## Question 1

**Quelle commande est utilisée pour définir la variable d’environnement BOOT qui définit l’emplacement du fichier d’image IOS sur un commutateur ?**

- config-register
- confreg
- boot loader
- **boot system**

**Explication :** La commande **boot system** sert à définir la variable d’environnement BOOT. Les commandes **config-register** et **confreg** servent à définir le registre de configuration. La commande **boot loader** gère le formatage du système de fichiers flash, la réinstallation du logiciel et la récupération de mot de passe.

---

## Question 2

**Qu’est-ce qu’un commutateur utilise pour localiser et charger l’image IOS ?**

- Fichier d’image IOS
- **Variable d’environnement BOOT**
- NVRAM
- Configuration initiale
- POST

**Explication :** La **variable d’environnement BOOT** contient les informations sur l’emplacement du fichier image IOS.

---

## Question 3

**Quel protocole renforce la sécurité des connexions à distance ?**

- **SSH**
- HTTP
- NetBEUI
- FTP
- POP

**Explication :** Le protocole **SSH** permet une connexion sécurisée à distance pour le dépannage et la surveillance des périphériques réseau.

---

## Question 4

**Quelle caractéristique décrit la commutation cut-through ?**

- Seules les trames sortantes subissent une vérification d’erreurs.
- Les fragments exempts d’erreurs sont transmis, la commutation se produit ainsi avec une faible latence.
- **Les trames sont transmises sans aucune vérification d’erreurs.**
- La mise en mémoire tampon est utilisée pour prendre en charge différentes vitesses Ethernet.

**Explication :** La commutation cut-through réduit la latence en transmettant la trame dès que l’adresse MAC de destination est lue, sans vérifier les erreurs.

---

## Question 5

**Quelle est la différence significative entre un concentrateur (hub) et un commutateur LAN de couche 2 ?**

- Un concentrateur divise les domaines de collision, et un commutateur divise les domaines de diffusion.
- Chaque port d’un concentrateur est un domaine de collision, et chaque port d’un switch est un domaine de diffusion.
- **Un concentrateur étend un domaine de collision et un commutateur divise les domaines de collision.**
- Un concentrateur transmet les cadres, et un commutateur transmet uniquement les paquets.

**Explication :** Les hubs, fonctionnant au niveau physique, étendent le domaine de collision, tandis que chaque port d’un commutateur crée un domaine de collision séparé.

---

## Question 6

**Parmi les propositions concernant les décisions de transfert de trame de commutateur Ethernet ci-après, laquelle est vraie ?**

- Seules les trames avec des adresses de destination de diffusion sont transmises à tous les ports de commutateurs actifs.
- Le transfert de trame cut-through garantit que les trames non valides sont toujours abandonnées.
- **Les décisions de transfert de trame sont basées sur l’adresse MAC et les mappages des ports dans la table CAM.**
- Les trames monodiffusion sont toujours transmises indépendamment de l’adresse MAC de destination.

**Explication :** Le commutateur utilise la table CAM, qui associe les adresses MAC aux ports, pour décider vers quel port transférer la trame.

---

## Question 7

**Comment les tampons de commutateur affectent-ils les performances du réseau ?**

- Ils conservent temporairement les données lorsqu’une collision se produit jusqu’à ce que la transmission reprenne.
- **Ils stockent les trames reçues, empêchant ainsi le rejet prématuré des trames en cas de congestion du réseau.**
- Ils fournissent une vérification des erreurs sur les données reçues.
- Ils fournissent de la mémoire supplémentaire pour un port particulier en cas d’échec de la négociation automatique de la vitesse ou du duplex.

**Explication :** Les tampons permettent de stocker temporairement les trames en cas de congestion, évitant ainsi leur perte.

---

## Question 8

**Quelle caractéristique de commutateur permet de garder le trafic local et de réduire la congestion du réseau ?**

- grands tampons de trame
- Commutation interne rapide
- vitesse de port rapide
- **Nombre de ports élevé**

**Explication :** Un commutateur à **nombre de ports élevé** permet de conserver le trafic localement, réduisant ainsi la nécessité de transférer le trafic entre commutateurs.

---

## Question 9

**Examinez l’illustration. Un commutateur reçoit une trame de couche 2 dont l’adresse MAC source est 000b.a023.c501 et l’adresse MAC de destination 0050.0fae.75aa. Placez les étapes du commutateur dans l’ordre où elles se produisent. (Les options ne doivent pas être toutes utilisées.)**

![Examen des Concepts de Commutation, des VLAN et du Routage Inter-VLAN](https://ccnareponses.com/wp-content/uploads/2022/06/Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam.png)  
![](https://ccnareponses.com/wp-content/uploads/2022/06/2022-06-27_093709.jpg)

**Réponse :**

1. **Vérification de l’adresse MAC source et ajout dans la table CAM si absente.**
2. **Examen de l’adresse MAC de destination et recherche dans la table CAM.**
3. **Si l’adresse est trouvée, transfert de la trame via le port correspondant ; sinon, diffusion sur tous les ports sauf celui d’origine.**

**Explication :** Le commutateur ajoute d’abord l’adresse source à sa table CAM, puis recherche l’adresse de destination pour décider du transfert direct ou de la diffusion.

---

## Question 10

**Quelle méthode de commutation garantit que la trame entrante est sans erreur avant le transfert ?**

- Coupure (Cut-Through)
- FCS
- Sans fragmentation (Fragment-Free)
- **Stockage et transmission (Store-and-Forward)**

**Explication :** La méthode **store-and-forward** vérifie l’intégrité de la trame (via la FCS) avant de la transmettre.

---

## Question 11

**Sur un commutateur configuré avec plusieurs VLAN, quelle commande supprime uniquement le VLAN 100 du commutateur ?**

- Switch(config-if)# no switchport access vlan 100
- Switch(config-if)# no switchport trunk allowed vlan 100
- Switch# delete flash:vlan.dat
- **Switch(config)# no vlan 100**

**Explication :** Pour supprimer un VLAN spécifique, la commande **no vlan 100** en mode configuration globale est utilisée.

---

## Question 12

**Examinez l’illustration. Un administrateur réseau vérifie l’affectation des ports et des VLAN sur le commutateur S2 et remarque que les interfaces Gi0/1 et Gi0/2 ne sont pas incluses dans le résultat. Pourquoi ces interfaces n’apparaissent-elles pas dans le résultat affiché ?**

![Examen des Concepts de Commutation, des VLAN et du Routage Inter-VLAN 23](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA-2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-27.jpg)

- Les VLAN natifs ne correspondent pas entre les commutateurs.
- Les interfaces sont arrêtées administrativement.
- **Les interfaces sont configurées comme interfaces d’agrégation.**
- Aucun support n’est connecté aux interfaces.

**Explication :** Les interfaces en agrégation ne sont pas affectées individuellement à un VLAN, d’où leur absence dans le résultat de **show vlan brief**.

---

## Question 13

**Un réseau comporte plusieurs VLAN répartis entre plusieurs commutateurs. Que se passe-t-il lorsqu’un périphérique sur le VLAN 20 envoie une trame Ethernet de diffusion ?**

- Tous les périphériques de tous les VLAN voient la trame.
- Les périphériques du VLAN 20 et le VLAN de gestion voient la trame.
- **Seuls les périphériques du VLAN 20 voient la trame.**
- Seuls les périphériques connectés au commutateur local voient la trame.

**Explication :** Chaque VLAN forme un domaine de diffusion isolé ; seul le VLAN 20 reçoit sa diffusion.

---

## Question 14

**Examinez l’illustration. Toutes les stations de travail sont correctement configurées sur le VLAN 20. Les stations de travail connectées au commutateur SW1 ne peuvent pas envoyer de trafic vers celles de SW2. Que faire pour résoudre le problème ?**

![CCNA2 v7 SRWE – Modules 1 – 4 Concepts de commutation, VLAN et réponses à l'examen de routage interVLAN 29](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-SRWE-%E2%80%93-Modules-1-%E2%80%93-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-29.png)

- **Autoriser le VLAN 20 sur la liaison agrégée.**
- Configurer les stations de travail sur SW2 pour les intégrer au VLAN natif.
- Configurer les stations de travail sur SW1 pour les intégrer au VLAN par défaut.
- Activer le protocole DTP aux deux extrémités de l’agrégation.

**Explication :** Pour que le trafic du VLAN 20 traverse correctement la liaison entre commutateurs, il faut s’assurer que ce VLAN est autorisé sur la liaison agrégée.

---

## Question 15

**Associez l’étiquette standard IEEE 802.1Q du VLAN à la description :**

- **Type :** Valeur de 2 octets appelée ID de protocole d’étiquette (TPID).
- **Priorité utilisateur :** Valeur de 3 bits qui gère les niveaux de service.
- **CFI (Canonical Format Identifier) :** Identificateur de 1 bit pour activer la transmission des trames Token Ring sur Ethernet.
- **ID de VLAN (VID) :** Numéro d’identification VLAN de 12 bits.

![[Pasted image 20250217231554.png]]

**Explication :** L’en-tête IEEE 802.1Q comporte ces quatre champs essentiels pour la gestion du trafic VLAN.

---

## Question 16

**Reportez-vous à l’illustration. Dans quel mode de commutateur le port G0/1 doit-il être attribué selon les bonnes pratiques de Cisco ?**

![CCNA2 v7 Modules 1 - 4 Concepts de commutation, VLAN et routage interVLAN Réponses d'examen 32](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-32.png)

- **trunk**
- accès
- auto
- Natif

**Explication :** Pour permettre le routage inter-VLAN via un routeur (router-on-a-stick), le port connecté doit être configuré en mode **trunk**.

---

## Question 17

**Quelle commande affiche le type d’encapsulation, l’ID de VLAN voix et le mode d’accès du VLAN pour l’interface Fa0/1 ?**

- show interfaces trunk
- show vlan brief
- show mac address-table interface Fa0/1
- **show interfaces Fa0/1 switchport**

**Explication :** La commande **show interfaces Fa0/1 switchport** affiche des informations détaillées sur le port, notamment le mode d’accès, l’encapsulation et le VLAN voix.

---

## Question 18

**Quelles sont les quatre étapes à suivre pour configurer un VLAN voix sur un port de commutateur ? (Choisissez quatre réponses.)**

- **Configurer le port de commutation en mode d’accès.**
- **Ajouter un VLAN voix.**
- Configurer l’interface du port de commutateur avec des sous-interfaces.
- Configurer l’interface en tant que trunk IEEE 802.1Q.
- Activer le protocole spanning-tree PortFast sur l’interface.
- Assigner un VLAN de données au port de commutateur.
- **S’assurer que le trafic voix est approuvé et est associé à une valeur de priorité CoS.**
- **Assigner le VLAN voix au port de commutateur.**

**Explication :** Pour configurer le VLAN voix, il faut définir le port en mode accès, créer le VLAN (par exemple, via la commande `vlan 150`), activer la QoS avec `mls qos trust cos` et enfin assigner le VLAN voix au port.

---

## Question 19

**Examinez l’illustration. Quelle est la cause de l’erreur affichée dans la configuration du routage inter-VLAN sur le routeur CiscoVille ?**

- L’interface gig0/0 ne prend pas en charge le routage inter-VLAN.
- L’adresse IP sur CiscoVille est incorrecte.
- **La commande encapsulation dot1Q 20 n’a pas été configurée.**
- La commande no shutdown n’a pas été configurée.

**Explication :** Avant d’attribuer une adresse IP à une sous-interface, il faut configurer l’encapsulation avec **encapsulation dot1Q [VLAN]**. Ici, l’omission de la commande pour VLAN 20 est la source de l’erreur.

---

## Question 20

**Lors d’un routage d’un grand nombre de VLAN, quels sont les inconvénients de l’utilisation du routage inter-VLAN « Router-on-a-Stick » par rapport au routage inter-VLAN du commutateur multicouche ? (Choisissez deux réponses.)**

- La méthode « Router-on-a-Stick » nécessite que les sous-interfaces soient configurées sur les mêmes sous-réseaux.
- **Un routeur dédié est nécessaire.**
- **Plusieurs sous-interfaces peuvent affecter le débit du trafic.**
- La méthode « Router-on-a-Stick » nécessite plusieurs interfaces physiques sur un routeur.
- Plusieurs interfaces SVI sont nécessaires.

**Explication :** Avec le router-on-a-stick, un routeur dédié est nécessaire et le trafic de tous les VLAN traverse une seule interface physique, ce qui peut limiter le débit.

---

## Question 21

**Examinez l’illustration. Un administrateur réseau vérifie la configuration du routage entre réseaux locaux virtuels. Les utilisateurs se plaignent que des PC de VLAN différents ne communiquent pas. D’après le résultat, quelles sont les erreurs de configuration de l’interface Gi1/1 du commutateur ? (Choisissez deux réponses.)**

![CCNA2 v7 Modules 1 - 4 Concepts de commutation, VLAN et routage interVLAN Réponses d'examen 43](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-43.png)

- La négociation de l’agrégation est activée sur Gi1/1.
- **L’interface Gi1/1 est configurée en mode d’agrégation.**
- **L’interface Gi1/1 se trouve dans le VLAN par défaut.**
- Le protocole d’encapsulation d’agrégation est mal configuré.
- Le VLAN voix n’est pas attribué à Gi1/1.

**Explication :** Pour le routage inter-VLAN, le port connecté au routeur doit être en mode accès et appartenir au VLAN approprié (par exemple, VLAN 10). Une configuration en agrégation et l’appartenance au VLAN par défaut sont erronées.

---

## Question 22

**Examinez l’illustration. Un administrateur réseau vérifie la configuration du routage entre réseaux locaux virtuels. Les utilisateurs se plaignent que PC2 ne peut pas communiquer avec PC1. Quelle est la cause du problème ?**

![CCNA2 v7 Modules 1 - 4 Concepts de commutation, VLAN et routage interVLAN Réponses d'examen 44](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-44.png)

- **La commande encapsulation dot1Q 5 ne contient pas le bon VLAN.**
- La commande interface GigabitEthernet0/0.5 n’a pas été saisie correctement.
- Aucune adresse IP n’est configurée sur l’interface Gi0/0.
- L’interface Gi0/0 n’est pas configurée comme port agrégé.
- La commande no shutdown n’est pas exécutée sur les sous-interfaces.

**Explication :** La sous-interface dédiée au VLAN doit utiliser la commande **encapsulation dot1Q** avec le numéro de VLAN correct. Ici, l’erreur dans le numéro (5 au lieu du VLAN attendu) cause le problème.

---

## Question 23

**Quelle est l’une des caractéristiques d’un port routé sur un commutateur de couche 3 ?**

- Il prend en charge le trunking.
- Il est généralement utilisé comme liaison WAN.
- Une adresse IP ne peut pas lui être attribuée.
- **Il n’est pas attribué à un VLAN.**

**Explication :** Un port routé, obtenu via la commande **no switchport**, ne fait partie d’aucun VLAN et peut se voir attribuer directement une adresse IP.

---

## Question 24

**Quel est l’effet de la commande `BranchSw(config-if)# shutdown` sur un commutateur Cisco 2960 ?**

- Met à jour la table d’adresses MAC pour le port associé.
- Enregistre la configuration active dans la configuration de démarrage.
- Active une interface de commutation virtuelle ou physique.
- Enregistre la configuration en cours dans la NVRAM.
- **Désactive une interface de commutation virtuelle ou physique.**

**Explication :** La commande **shutdown** met l’interface hors service.

---

## Question 25

**Quel type de VLAN est initialement le VLAN de gestion ?**

- VLAN de gestion
- **VLAN par défaut**
- VLAN données
- VLAN natif

**Explication :** Par défaut, le VLAN de gestion est le VLAN 1, soit le **VLAN par défaut**.

---

## Question 26

**Examinez l’illustration. Un administrateur réseau vérifie l’état de l’interface série, qui est indiquée comme étant administrativement désactivée. Quelle commande faut-il exécuter pour activer l’interface ?**

![Modules CCNA2 v7 1 - 4 Concepts de commutation, VLAN et réponses à l'examen de routage interVLAN 70](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-70.jpg)

- clockrate 128000
- end
- IPv6 enable
- **no shutdown**

**Explication :** La commande **no shutdown** active l’interface, car par défaut les interfaces de routeur sont désactivées.

---

## Question 27

**Reportez-vous à l’illustration. L’administrateur réseau souhaite configurer le commutateur Switch1 pour autoriser les connexions SSH et interdire les connexions Telnet. Comment doit-il modifier la configuration affichée ?**

![CCNA2 v7 Modules 1 - 4 Concepts de commutation, VLAN et routage interVLAN Réponses d'examen 71](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-71.jpg)

- Reconfigurer la clé RSA.
- **Modifier la commande transport input.**
- Configurer SSH sur une ligne différente.
- Utiliser SSH version 1.

**Explication :** Pour restreindre l’accès uniquement au protocole SSH, il faut ajuster la commande **transport input** afin d’exclure Telnet.

---

## Question 28

**Quelle solution permettrait à une université de réduire la congestion du réseau causée par des collisions ?**

- un routeur avec trois ports Ethernet
- un pare-feu connectant deux fournisseurs Internet
- **un commutateur à densité de ports élevée**
- un routeur avec deux ports Ethernet

**Explication :** Un **commutateur à densité de ports élevée** segmente le réseau en réduisant les collisions grâce à la microsegmentation.

---

## Question 29

**Quelles sont les deux affirmations correctes concernant le routage inter-VLAN SVI ? (Choisissez deux réponses.)**

- **Il n’y a pas besoin d’une connexion à un routeur.**
- **La commutation de paquets est plus rapide avec SVI.**
- Les interfaces virtuelles prennent en charge les sous-interfaces.
- Les SVIs peuvent être regroupés dans EtherChannels.
- Les SVIs éliminent le besoin d’une passerelle par défaut dans les hôtes.

**Explication :** Le routage inter-VLAN via SVI se fait directement sur le commutateur, éliminant ainsi le besoin d’un routeur et accélérant le traitement grâce à la commutation de paquets.

---

## Question 30

**Dans la configuration du routage inter-VLAN, quel est le rôle du paramètre manquant (indiqué par un point d’interrogation) ?**

![[Pasted image 20250217231715.png]]

- **Il identifie le numéro du VLAN.**
- Il identifie la sous-interface.
- Il identifie le type d’encapsulation utilisé.
- Il identifie le nombre d’hôtes autorisés sur l’interface.
- Il identifie le numéro du VLAN natif.

**Explication :** Dans la commande **encapsulation dot1q ?**, le paramètre manquant correspond au numéro du VLAN à associer à la sous-interface.

---

## Question 31

**Quel type de VLAN est utilisé pour indiquer les trafics non étiquetés passant dans un port agrégé ?**

- données
- par défaut
- **natif**
- management

**Explication :** Le **VLAN natif** est celui dont le trafic n’est pas tagué lorsqu’il traverse une liaison trunk.

---

## Question 32

**Que montre la commande `show vlan brief` ?**

- L’affectation des VLAN et les périphériques associés (en fonction de l’adresse MAC).
- L’affectation des VLAN et l’encapsulation de trunking.
- **L’affectation des VLAN et l’ensemble des ports de commutateur qui leur appartiennent.**
- L’affectation des VLAN et le réseau VLAN natif.

**Explication :** La commande **show vlan brief** affiche la répartition des ports de commutateur parmi les différents VLAN.

---

## Question 33

**Dans l’activité Packet Tracer, quel message s’affiche lorsque l’on saisit `10.10.10.1` dans la barre d’adresse du navigateur Web de PC1 ?**

![[Pasted image 20250217231808.png]]

- Serveur local
- Serveur de test
- Serveur Cisco
- **Serveur de fichiers**

**Explication :** En raison d’une erreur de configuration (absence de trunk sur l’interface Gi0/1), PC1 ne peut atteindre Server1. Une fois la configuration corrigée, le message affiché correspond à **Serveur Cisco**.

---

## Question 34

**Quelle commande affiche des informations sur le paramètre auto-MDIX pour une interface donnée ?**

- **show controllers**
- show processes
- show interfaces
- show running-config

**Explication :** La commande **show controllers** (avec le mot-clé approprié) permet de consulter les paramètres auto-MDIX d’une interface.

---

## Question 35

**Si une extrémité d’une connexion Ethernet est en full duplex et l’autre en semi-duplex, où se produisent les collisions tardives ?**

- **Sur l’extrémité en mode semi-duplex**
- Uniquement sur les interfaces série
- Sur l’extrémité en mode full duplex
- Sur les deux extrémités

**Explication :** Les collisions tardives se produisent généralement sur l’extrémité configurée en **semi-duplex**.

---

## Question 36

**Quel est l’impact de l’ajout d’un commutateur de couche 2 sur un réseau ?**

- une augmentation de la taille du domaine de collision
- une augmentation du nombre de collisions de réseaux
- **une augmentation de la taille du domaine de diffusion**
- une augmentation du nombre de trames ignorées

**Explication :** L’ajout d’un commutateur de couche 2 augmente le nombre de domaines de collision tout en étendant le domaine de diffusion.

---

## Question 37

**Quelles informations sont ajoutées à la table de commutation à partir des trames entrantes ?**

- Adresse IP de destination et numéro de port entrant
- Adresse MAC de destination et numéro de port entrant
- **Adresse MAC source et numéro de port entrant**
- Adresse IP source et numéro de port entrant

**Explication :** Le commutateur se base sur l’**adresse MAC source** des trames reçues pour mettre à jour sa table d’adresses.

---

## Question 38

**Dans quels cas doit-on désactiver le protocole DTP ? (Choisissez deux réponses.)**

- Lorsqu’un commutateur voisin utilise le mode DTP dynamic auto
- Lorsqu’un commutateur voisin utilise le mode DTP dynamic desirable
- **Pour connecter un commutateur Cisco à un commutateur tiers**
- **Sur les liaisons qui ne doivent pas être agrégées**
- Sur les liaisons qui doivent tenter l’agrégation de manière dynamique

**Explication :** Il est recommandé de désactiver DTP sur les liaisons non destinées à l’agrégation et lors de connexions avec des équipements tiers.

---

## Question 39

**Qu’advient-il des ports du commutateur après la suppression du VLAN auquel ils sont affectés ?**

- Les ports sont désactivés.
- **Les ports cessent de communiquer avec les appareils.**
- Les ports sont placés en mode Trunk.
- Les ports sont affectés au VLAN par défaut, VLAN1.

**Explication :** La suppression d’un VLAN ramène automatiquement les ports associés au **VLAN par défaut (VLAN1)**.

---

## Question 40

**Dans une topologie router-on-a-stick, quel élément est nécessaire pour permettre la communication entre un VLAN15 et un VLAN30 ?**

- Un routeur avec au moins deux interfaces LAN est nécessaire.
- Un commutateur multicouche est nécessaire.
- Deux groupes de commutateurs, chacun pour un VLAN.
- **Un commutateur avec un port configuré en tant que ligne principale est nécessaire pour se connecter au routeur.**

**Explication :** Pour le router-on-a-stick, le commutateur doit posséder un port configuré en mode trunk (ligne principale) pour connecter le routeur et permettre le routage entre VLAN.

---

## Question 41

**Examinez l’illustration. Un administrateur réseau configure le routeur RT1 pour le routage inter-VLAN. Les hôtes Host1, Host2 et Host3 ne parviennent pas à communiquer entre eux. Quelle est la cause du problème, d’après la configuration du routeur ?**

![CCNA2 v7 Modules 1 - 4 Concepts de commutation, VLAN et routage interVLAN Réponses d'examen 46](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-46.png)

- **Les adresses IP des sous-interfaces ne sont pas correctement associées aux VLAN.**
- Chaque sous-interface nécessite une commande no shutdown séparée.
- Les routeurs ne supportent pas l’encapsulation 802.1Q sur les sous-interfaces.
- Il manque la configuration IP sur l’interface Fa0/0.

**Explication :** Des adresses IP incorrectes sur les sous-interfaces (qui doivent correspondre aux schémas d’adressage des VLAN) empêchent la communication inter-VLAN.

---

## Question 42

**Quel est l’effet de la commande `BranchSw(config-if)# mdix auto` sur un commutateur Cisco 2960 ?**

- **Il ajuste automatiquement le port pour permettre l’utilisation d’un câble direct ou croisé.**
- Il met à jour la table d’adresses MAC pour le port associé.
- Il permet de configurer une adresse IPv6 sur une interface physique.
- Il applique une adresse IPv4 à l’interface virtuelle.
- Il applique une adresse IPv6 à l’interface virtuelle.

**Explication :** La commande **mdix auto** permet à l’interface de détecter automatiquement le type de câble (direct ou croisé) utilisé.

---

## Question 43

**Quel type de VLAN est conçu pour garantir un délai inférieur à 150 ms ?**

- VLAN trunk
- VLAN souhaitable
- **VLAN voix**
- VLAN de sécurité

**Explication :** Le **VLAN voix** est optimisé pour le trafic vocal, nécessitant une faible latence.

---

## Question 44

**Quelle est la caractéristique d’une interface de bouclage IPv4 sur un routeur Cisco IOS ?**

- Une seule interface de bouclage peut être active sur un routeur.
- Elle est associée à un port physique et connectable à d’autres périphériques.
- **C’est une interface logique interne du routeur.**
- La commande no shutdown est nécessaire pour qu’elle soit active.

**Explication :** L’interface de bouclage est une interface **logique** toujours active tant que le routeur fonctionne.

---

## Question 45

**Quelle est la taille minimale d’une trame Ethernet pour qu’elle ne soit pas rejetée ?**

- **64 octets**
- 512 octets
- 1024 octets
- 1500 octets

**Explication :** La taille minimale d’une trame Ethernet est de **64 octets** ; en dessous, elle est considérée comme incomplète.

---

## Question 46

**Quel type de VLAN ne devrait pas transporter le trafic de gestion vocale et réseau ?**

- VLAN trunk
- VLAN de sécurité
- **VLAN données**
- VLAN voix


---

## Question 47

**Examinez l’illustration. Un administrateur réseau a configuré le routeur CiscoVille avec les commandes pour assurer le routage entre réseaux locaux virtuels. Quelle commande est requise sur un commutateur connecté à l’interface Gi0/0 du routeur CiscoVille pour autoriser le routage inter-VLAN ?**

![[Pasted image 20250217231942.png]]

- switchport mode access
- no switchport
- switchport mode dynamic desirable
- **switchport mode trunk**

**Explication :** Pour une configuration router-on-a-stick, le port doit être en mode **trunk** afin de transporter tous les VLAN concernés.

---

## Question 48

**Dans une configuration router-on-a-stick, combien de sous-interfaces sont nécessaires si chaque VLAN doit être routé séparément ?**

![[Pasted image 20250217232014.png]]

- 1
- 2
- 3
- **4**
- 5

**Explication :** L’illustration indique quatre VLAN distincts, nécessitant chacun une sous-interface, soit un total de **4**.

---

## Question 49

**Combien de domaines de diffusion sont affichés dans l’illustration ?**

![[Pasted image 20250217232025.png]]

- 16
- 1
- 55
- **8**
- 4

**Explication :** En comptant les liens entre routeurs et les LAN, l’illustration totalise **8 domaines de diffusion**.

---

## Question 50

**Quel est l’effet de la commande `BranchSw# configure terminal` sur un commutateur Cisco 2960 ?**

- Il met à jour la table d’adresses MAC.
- **Passer en mode de configuration globale.**
- Il entre en mode de configuration pour une interface virtuelle.
- Il permet de configurer une adresse IPv6 sur une interface physique.
- Il applique une adresse IPv4 à l’interface virtuelle.

**Explication :** La commande **configure terminal** permet d’accéder au mode de configuration globale du commutateur.

---

## Question 51

**Parmi les propositions suivantes, lesquelles décrivent le VLAN natif ? (Choisissez deux réponses.)**

- **Le trafic du VLAN natif n’est pas étiqueté sur la liaison agrégée.**
- **Le VLAN natif fournit un identificateur commun aux deux extrémités d’une agrégation.**
- Ce VLAN est nécessaire pour la gestion à distance du commutateur.
- Conçu pour transporter le trafic généré par les utilisateurs, ce type est également appelé VLAN par défaut.
- Le trafic vocal utilise le VLAN natif.

**Explication :** Le **VLAN natif** se distingue par le fait que son trafic n’est pas tagué et qu’il fournit un identificateur commun sur une liaison trunk.

---

## Question 52

**D’après la commande `show trunk interfaces`, quelle conclusion peut-on tirer si l’interface G0/2 n’apparaît pas ?**

![[Pasted image 20250217232059.png]]

- **L’interface G0/2 n’est pas configurée en tant que port trunk.**
- Le VLAN 20 n’a pas été créé.
- Le mode DTP est incorrectement défini sur dynamic auto sur l’interface G0/1.
- L’encapsulation sur l’interface G0/1 est incorrecte.

**Explication :** L’absence de l’interface G0/2 dans la sortie suggère qu’elle n’est pas configurée en mode **trunk**.

---

## Question 53

**Examinez l’illustration. Un technicien programme le commutateur SW3 pour qu’il traite le trafic voix et données via le port Fa0/20. Quel problème présente la configuration, le cas échéant ?**

![[Pasted image 20250217232109.png]]

- **La commande pour attribuer le VLAN voix est incorrecte.**
- La commande `mls qos trust cos` devrait être associée au VLAN 35.
- La configuration ne présente aucune erreur.
- Il n’est possible d’assigner qu’un seul VLAN à ce port.


---

## Question 54

**Quel composant permet de réduire le temps de traitement des paquets dans un commutateur ?**

- processeurs doubles
- Grosses mémoires tampons
- **ASIC**
- RAM de stockage et de transmission

**Explication :** Les **ASIC** (circuits intégrés spécifiques à l’application) accélèrent le traitement des paquets au sein du commutateur.

---

## Question 55
![[Pasted image 20250217232213.png]]


**Associez le mode DTP à sa fonction :**

- **Dynamic auto → Attente passive du déclenchement de l’agrégation par le voisin**
- **Nonegotiate → Nécessité d’une configuration manuelle de l’agrégation ou de la non-agrégation**
- **Dynamic desirable → Tentative active de convertir la liaison en agrégation**
- **Trunk → Mode permanent d’agrégation**

**Explication :** Chaque mode DTP a une fonction particulière :

- **Dynamic auto** attend que le voisin initie l’agrégation.
- **Dynamic desirable** tente activement d’établir l’agrégation.
- **Nonegotiate** désactive la négociation DTP.
- Le mode **Trunk** force la liaison en mode agrégé.

---

## Question 56

![[Pasted image 20250217232225.png]]

**Examinez l’illustration. Un administrateur réseau a configuré le routeur CiscoVille avec les commandes pour assurer le routage entre réseaux locaux virtuels. Quel type de port est requis sur un commutateur connecté à l’interface Gi0/0 du routeur CiscoVille pour autoriser le routage inter-VLAN ?**

- Interface SVI
- **Port agrégé**
- Port routé
- Port d’accès

**Explication :** Dans une configuration router-on-a-stick, le port du commutateur connecté au routeur doit être configuré en mode trunk (ici représenté par un port agrégé) pour transporter plusieurs VLAN.

---

## Question 57

**Reportez-vous à l’illustration. Une configuration router-on-a-stick a été mise en œuvre pour les VLAN 15, 30 et 45, comme indiqué par le résultat de la commande `show running-config`. Les PC du VLAN 45 (réseau 172.16.45.0/24) ont des difficultés à se connecter aux PC du VLAN 30 (réseau 172.16.30.0/24). Quelle erreur la plus probable est à l’origine de ce problème ?**

![[Pasted image 20250217232428.png]]


- Il manque une adresse IP sur l’interface GigabitEthernet 0/0.
- **Une adresse IP incorrecte est configurée sur l’interface GigabitEthernet 0/0.30.**
- Il manque la commande no shutdown sur l’interface GigabitEthernet 0/0.30.
- Le mauvais VLAN a été configuré sur l’interface GigabitEthernet 0/0.45.

**Explication :** Une erreur d’adressage sur la sous-interface **Gi0/0.30** empêche la communication entre les VLAN.

---

## Question 58

**Quel est l’effet de la commande `BranchSw(config-if)# exit` ?**

- **Retourne au mode de configuration globale.**
- Repasse en mode EXEC privilégié.
- Passe en mode utilisateur.
- Configure la passerelle par défaut.
- Enregistre la configuration active dans la NVRAM.

**Explication :** La commande **exit** quitte le mode de configuration d’interface pour revenir au mode de configuration globale.

---

## Question 59

**Quel type de VLAN est utilisé pour séparer le réseau en groupes d’utilisateurs ou d’appareils ?**

- VLAN natif
- **VLAN données**
- VLAN voix
- VLAN de gestion

**Explication :** Le **VLAN données** est utilisé pour segmenter le trafic entre groupes d’utilisateurs ou d’appareils.

---

## Question 60

**Après quelle étape de la séquence de démarrage du commutateur le chargeur de démarrage est-il exécuté ?**

- **après l’exécution du POST**
- après l’initialisation du système de fichiers flash
- après l’initialisation de l’UC
- après la localisation de l’IOS

**Explication :** Le chargeur de démarrage est exécuté **après le POST** (Power-On Self Test).

---

## Question 61

**Si la commande `no switchport access vlan 30` est saisie sur le port Fa0/11 (affecté au VLAN 30), que se passe-t-il ?**

- **Le port Fa0/11 est renvoyé au VLAN 1.**
- Le port Fa0/11 est mis hors service.
- Le VLAN 30 est supprimé.
- Un message d’erreur s’affiche.

**Explication :** La commande **no switchport access vlan 30** réinitialise le port au **VLAN par défaut (VLAN1)** sans supprimer le VLAN 30.

---

## Question 62

**Quel type de VLAN est configuré spécifiquement pour le trafic réseau (SSH, Telnet, HTTPS, HTTP, SNMP) ?**

- VLAN de sécurité
- VLAN voix
- **VLAN de gestion**
- VLAN trunk

**Explication :** Le **VLAN de gestion** est réservé aux communications de gestion du réseau.

---

## Question 63

**Quel est l’effet de la commande `BranchSw(config-if)# ip address 172.18.33.88 255.255.255.0` ?**

- Il permet de configurer une adresse IPv6 sur une interface physique.
- Il met à jour la table d’adresses MAC pour le port associé.
- Il applique une adresse IPv6 à l’interface virtuelle.
- **Il applique une adresse IPv4 à l’interface virtuelle.**
- Il active une interface de commutation.

**Explication :** Cette commande attribue une **adresse IPv4** à une interface virtuelle (souvent une interface VLAN) sur le commutateur.

---

## Question 64

**Quel type de VLAN prend en charge le trafic non marqué ?**

- **VLAN natif**
- VLAN de sécurité
- VLAN trunk
- VLAN souhaitable

**Explication :** Le **VLAN natif** est celui qui ne marque pas le trafic lorsqu’il traverse une liaison trunk.

# Modules 1 – 4

## Question 1

**Which command is used to define the BOOT environment variable that specifies the location of the IOS image file on a switch?**

- config-register
- confreg
- boot loader
- **boot system**

**Explanation:** The **boot system** command sets the BOOT environment variable. The commands **config-register** and **confreg** are used to set the configuration register. The **boot loader** command manages flash file system formatting, software reinstallation, and password recovery.

---

## Question 2

**What does a switch use to locate and load the IOS image?**

- IOS image file
- **BOOT environment variable**
- NVRAM
- Initial configuration
- POST

**Explanation:** The **BOOT environment variable** contains the information about where the IOS image file is located.

---

## Question 3

**Which protocol enhances the security of remote connections?**

- **SSH**
- HTTP
- NetBEUI
- FTP
- POP

**Explanation:** The **SSH** protocol provides secure remote access for troubleshooting and monitoring network devices.

---

## Question 4

**Which characteristic best describes cut-through switching?**

- Only outgoing frames are checked for errors.
- Error-free fragments are transmitted, resulting in low-latency switching.
- Frames are forwarded without any error checking.
- Buffering is used to support different Ethernet speeds.

**Explanation:** Cut-through switching reduces latency by forwarding the frame as soon as the destination MAC address is read, without performing error checking.

---

## Question 5

**What is the significant difference between a hub and a Layer 2 LAN switch?**

- A hub divides collision domains, and a switch divides broadcast domains.
- Each hub port is a collision domain, and each switch port is a broadcast domain.
- **A hub extends a collision domain while a switch divides collision domains.**
- A hub simply repeats frames, while a switch forwards only packets.

**Explanation:** Hubs operate at the physical layer and extend the collision domain, whereas each port on a switch creates a separate collision domain.

---

## Question 6

**Among the following statements regarding Ethernet switch frame forwarding decisions, which one is true?**

- Only frames with broadcast destination addresses are forwarded out all active switch ports.
- Cut-through forwarding ensures that invalid frames are always discarded.
- **Forwarding decisions are based on the MAC address and port mappings in the CAM table.**
- Unicast frames are always forwarded regardless of the destination MAC address.

**Explanation:** The switch uses the CAM table, which maps MAC addresses to ports, to determine the correct port for frame forwarding.

---

## Question 7

**How do switch buffers affect network performance?**

- They temporarily hold data when a collision occurs until transmission resumes.
- **They store incoming frames to prevent premature frame drops during network congestion.**
- They provide error checking for the received data.
- They provide extra memory for a particular port in case of auto-negotiation failure in speed or duplex.

**Explanation:** Buffers temporarily store frames during congestion, preventing them from being dropped.

---

## Question 8

**Which switch feature helps keep traffic local and reduces network congestion?**

- Large frame buffers
- Fast internal switching
- High port speed
- **High port density**

**Explanation:** A switch with **high port density** allows local traffic to remain on the switch, reducing the need to forward traffic between switches.

---

## Question 9

**Examine the diagram. A switch receives a Layer 2 frame with a source MAC address of 000b.a023.c501 and a destination MAC address of 0050.0fae.75aa. Place the switch’s steps in the order in which they occur. (Not all options need to be used.)**

![Exam on Switching Concepts, VLANs, and Inter-VLAN Routing](https://ccnareponses.com/wp-content/uploads/2022/06/Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam.png)  
![](https://ccnareponses.com/wp-content/uploads/2022/06/2022-06-27_093709.jpg)

**Answer:**

1. **Check the source MAC address and add it to the CAM table if it is not already present.**
2. **Examine the destination MAC address and look it up in the CAM table.**
3. **If the address is found, forward the frame out the corresponding port; if not, flood the frame to all ports except the incoming port.**

**Explanation:** The switch first learns the source address by adding it to its CAM table, then looks up the destination address to decide whether to perform a direct forward or flood the frame.

---

## Question 10

**Which switching method ensures that the incoming frame is error-free before forwarding it?**

- Cut-Through
- FCS
- Fragment-Free
- **Store-and-Forward**

**Explanation:** The **store-and-forward** method checks the integrity of the frame (via the FCS) before forwarding it.

---

## Question 11

**On a switch configured with multiple VLANs, which command deletes only VLAN 100 from the switch?**

- Switch(config-if)# no switchport access vlan 100
- Switch(config-if)# no switchport trunk allowed vlan 100
- Switch# delete flash:vlan.dat
- **Switch(config)# no vlan 100**

**Explanation:** To remove a specific VLAN, the **no vlan 100** command is used in global configuration mode.

---

## Question 12

**Examine the diagram. A network administrator reviews the port and VLAN assignments on switch S2 and notices that interfaces Gi0/1 and Gi0/2 are not listed in the output. Why do these interfaces not appear?**

![Exam on Switching Concepts, VLANs, and Inter-VLAN Routing – Question 12](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA-2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-27.jpg)

- The native VLANs do not match between the switches.
- The interfaces are administratively down.
- **The interfaces are configured as aggregated (port-channel) interfaces.**
- No device is connected to the interfaces.

**Explanation:** Interfaces configured as part of an aggregation (port-channel) are not individually assigned to a VLAN, which is why they do not appear in the **show vlan brief** output.

---

## Question 13

**A network has multiple VLANs spread across several switches. What happens when a device on VLAN 20 sends a broadcast Ethernet frame?**

- All devices in all VLANs receive the frame.
- Devices in VLAN 20 and the management VLAN receive the frame.
- **Only devices in VLAN 20 receive the frame.**
- Only devices connected to the local switch receive the frame.

**Explanation:** Each VLAN forms an isolated broadcast domain; only VLAN 20 will receive its broadcast.

---

## Question 14

**Examine the diagram. All workstations are correctly assigned to VLAN 20. However, workstations connected to SW1 cannot send traffic to those on SW2. What should be done to resolve the issue?**

![CCNA2 v7 SRWE – Modules 1 – 4 Switching Concepts, VLANs, and Inter-VLAN Routing Exam Answers – Question 14](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-SRWE-%E2%80%93-Modules-1-%E2%80%93-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-29.png)

- **Allow VLAN 20 on the aggregated link.**
- Reconfigure the workstations on SW2 to be on the native VLAN.
- Configure the workstations on SW1 to be on the default VLAN.
- Enable DTP on both ends of the aggregation.

**Explanation:** To ensure that VLAN 20 traffic passes correctly between switches, the VLAN must be allowed on the aggregated (trunk) link.

---

## Question 15

**Match the standard IEEE 802.1Q VLAN header fields to their descriptions:**

- **Type:** 2-byte value called the Tag Protocol Identifier (TPID).
- **User Priority:** 3-bit value that manages Quality of Service (QoS) levels.
- **CFI (Canonical Format Indicator):** 1-bit identifier used to enable transmission of Token Ring frames on Ethernet.
- **VLAN ID (VID):** 12-bit VLAN identification number.

![[Pasted image 20250217231554.png]]

**Explanation:** The IEEE 802.1Q header comprises these four essential fields for VLAN traffic management.

---

## Question 16

**Refer to the diagram. In which mode should port G0/1 be assigned according to Cisco best practices?**

![CCNA2 v7 Modules 1 - 4 Switching Concepts, VLANs, and Inter-VLAN Routing Exam Answers – Question 16](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-32.png)

- **trunk**
- access
- auto
- native

**Explanation:** To enable inter-VLAN routing (router-on-a-stick), the connected port must be configured in **trunk** mode.

---

## Question 17

**Which command displays the encapsulation type, voice VLAN ID, and access mode for interface Fa0/1?**

- show interfaces trunk
- show vlan brief
- show mac address-table interface Fa0/1
- **show interfaces Fa0/1 switchport**

**Explanation:** The **show interfaces Fa0/1 switchport** command provides detailed information about the port, including its mode, encapsulation, and voice VLAN.

---

## Question 18

**Which four steps are required to configure a voice VLAN on a switch port? (Select four answers.)**

- **Configure the switch port as an access port.**
- **Create the voice VLAN.**
- Configure the port’s QoS to trust CoS for voice traffic.
- **Assign the voice VLAN to the switch port.**
- Configure the switch port with subinterfaces.
- Configure the port as an IEEE 802.1Q trunk.
- Enable spanning-tree PortFast on the interface.
- **Ensure that voice traffic is marked with the correct CoS priority.**

**Explanation:** To configure a voice VLAN, you must set the port to access mode, create the VLAN (e.g., with the `vlan` command), enable QoS (using a command like `mls qos trust cos`), and assign the voice VLAN to the port.

---

## Question 19

**Examine the diagram. What is the cause of the error in the inter-VLAN routing configuration on the CiscoVille router?**

- The GigabitEthernet0/0 interface does not support inter-VLAN routing.
- The IP address on CiscoVille is incorrect.
- **The encapsulation dot1Q 20 command has not been configured.**
- The no shutdown command has not been configured.

**Explanation:** Before assigning an IP address to a subinterface, you must configure encapsulation with **encapsulation dot1Q [VLAN]**. Here, the omission of the command for VLAN 20 is the cause of the error.

---

## Question 20

**When routing a large number of VLANs, what are the disadvantages of using router-on-a-stick inter-VLAN routing compared to multilayer switch inter-VLAN routing? (Select two answers.)**

- Router-on-a-stick requires subinterfaces to be configured on the same subnet.
- **A dedicated router is required.**
- **Multiple subinterfaces can impact overall throughput.**
- Router-on-a-stick requires multiple physical interfaces on a router.
- Multiple SVI interfaces are required.

**Explanation:** With router-on-a-stick, a dedicated router is needed and all VLAN traffic traverses a single physical interface, which can limit throughput.

---

## Question 21

**Examine the diagram. A network administrator reviews the inter-VLAN routing configuration. Users complain that PCs on different VLANs cannot communicate. According to the output, what are the configuration errors on switch interface Gi1/1? (Select two answers.)**

![CCNA2 v7 Modules 1 - 4 Switching Concepts, VLANs, and InterVLAN Routing Exam Answers – Question 21](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-43.png)

- DTP negotiation is enabled on Gi1/1.
- **Gi1/1 is configured as an aggregated (port-channel) interface.**
- **Gi1/1 is in the default VLAN.**
- The aggregation encapsulation protocol is misconfigured.
- The voice VLAN is not assigned to Gi1/1.

**Explanation:** For proper inter-VLAN routing, the port connected to the router must be in access mode and assigned to the appropriate VLAN (e.g., VLAN 10). Configuring it as an aggregated port and having it in the default VLAN are incorrect.

---

## Question 22

**Examine the diagram. A network administrator reviews the inter-VLAN routing configuration. Users report that PC2 cannot communicate with PC1. What is the cause of the problem?**

![CCNA2 v7 Modules 1 - 4 Switching Concepts, VLANs, and InterVLAN Routing Exam Answers – Question 22](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-44.png)

- **The encapsulation dot1Q 5 command does not use the correct VLAN.**
- The interface GigabitEthernet0/0.5 command is entered incorrectly.
- No IP address is configured on interface Gi0/0.
- Interface Gi0/0 is not configured as an aggregated port.
- The no shutdown command has not been executed on the subinterfaces.

**Explanation:** The subinterface for the VLAN must use the correct VLAN number with the **encapsulation dot1Q** command. Here, an error in the VLAN number (5 instead of the expected VLAN) causes the issue.

---

## Question 23

**Which of the following is a characteristic of a routed port on a Layer 3 switch?**

- It supports trunking.
- It is typically used as a WAN link.
- An IP address cannot be assigned to it.
- **It is not assigned to a VLAN.**

**Explanation:** A routed port, configured with the **no switchport** command, does not belong to any VLAN and can have an IP address assigned directly.

---

## Question 24

**What is the effect of the command `BranchSw(config-if)# shutdown` on a Cisco 2960 switch?**

- Updates the MAC address table for the associated port.
- Saves the running configuration to the startup configuration.
- Activates a virtual or physical switch interface.
- Saves the running configuration in NVRAM.
- **Disables a virtual or physical switch interface.**

**Explanation:** The **shutdown** command administratively brings the interface down.

---

## Question 25

**Which type of VLAN is the management VLAN by default?**

- Management VLAN
- **Default VLAN**
- Data VLAN
- Native VLAN

**Explanation:** By default, the management VLAN is VLAN 1, i.e., the **Default VLAN**.

---

## Question 26

**Examine the diagram. A network administrator checks the status of a serial interface, which is shown as administratively down. Which command should be executed to enable the interface?**

![CCNA2 v7 Modules 1 - 4 Switching Concepts, VLANs, and InterVLAN Routing Exam Answers – Question 26](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-70.jpg)

- clockrate 128000
- end
- IPv6 enable
- **no shutdown**

**Explanation:** The **no shutdown** command activates the interface because, by default, router interfaces are administratively down.

---

## Question 27

**Refer to the diagram. A network administrator wants to configure switch Switch1 to allow SSH connections and block Telnet connections. How should the displayed configuration be modified?**

![CCNA2 v7 Modules 1 - 4 Switching Concepts, VLANs, and InterVLAN Routing Exam Answers – Question 27](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-71.jpg)

- Reconfigure the RSA key.
- **Modify the transport input command.**
- Configure SSH on a different line.
- Use SSH version 1.

**Explanation:** To restrict access solely to SSH, the **transport input** command must be adjusted to exclude Telnet.

---

## Question 28

**Which solution would allow a university to reduce network congestion caused by collisions?**

- A router with three Ethernet ports
- A firewall connecting two Internet providers
- **A high port density switch**
- A router with two Ethernet ports

**Explanation:** A **high port density switch** segments the network by reducing collisions through microsegmentation.

---

## Question 29

**Which two statements are correct regarding SVI inter-VLAN routing? (Select two answers.)**

- **There is no need for a separate router.**
- **Packet switching is faster with SVIs.**
- Virtual interfaces support subinterfaces.
- SVIs can be grouped into EtherChannels.
- SVIs eliminate the need for a default gateway on hosts.

**Explanation:** Inter-VLAN routing via SVIs is performed directly on the switch, eliminating the need for an external router and speeding up processing with packet switching.

---

## Question 30

**In the inter-VLAN routing configuration, what is the role of the missing parameter (indicated by a question mark) in the command?**

![[Pasted image 20250217231715.png]]

- **It identifies the VLAN number.**
- It identifies the subinterface.
- It identifies the encapsulation type used.
- It identifies the number of hosts allowed on the interface.
- It identifies the native VLAN number.

**Explanation:** In the command **encapsulation dot1q ?**, the missing parameter is the VLAN number to be associated with the subinterface.

---

## Question 31

**Which type of VLAN is used to indicate untagged traffic passing through a trunk port?**

- Data
- Default
- **Native**
- Management

**Explanation:** The **native VLAN** is the one whose traffic is not tagged when traversing a trunk link.

---

## Question 32

**What does the command `show vlan brief` display?**

- VLAN assignments and associated devices (based on MAC addresses).
- VLAN assignments and trunk encapsulation details.
- **VLAN assignments and all switch ports that belong to each VLAN.**
- VLAN assignments and the native VLAN.

**Explanation:** The **show vlan brief** command displays the VLAN distribution along with the switch ports assigned to each VLAN.

---

## Question 33

**In the Packet Tracer lab, what message appears when entering `10.10.10.1` in PC1’s web browser address bar?**

![[Pasted image 20250217231808.png]]

- Local server
- Test server
- Cisco server
- **File server**

**Explanation:** Due to a configuration error (lack of trunk on the Gi0/1 interface), PC1 initially cannot reach Server1. Once corrected, the message displayed corresponds to **Cisco server**.

---

## Question 34

**Which command displays information about the auto-MDIX setting for a given interface?**

- **show controllers**
- show processes
- show interfaces
- show running-config

**Explanation:** The **show controllers** command (with the appropriate keyword) provides details on the auto-MDIX setting for an interface.

---

## Question 35

**If one end of an Ethernet connection is set to full duplex and the other to half-duplex, where do late collisions occur?**

- **On the half-duplex end**
- Only on serial interfaces
- On the full-duplex end
- On both ends

**Explanation:** Late collisions typically occur on the interface configured for **half-duplex** operation.

---

## Question 36

**What is the impact of adding a Layer 2 switch to a network?**

- An increase in the size of the collision domain
- An increase in the number of network collisions
- **An increase in the size of the broadcast domain**
- An increase in the number of ignored frames

**Explanation:** Adding a Layer 2 switch increases the number of collision domains (by separating them) but extends the overall broadcast domain.

---

## Question 37

**What information is added to the switching table from incoming frames?**

- Destination IP address and incoming port number
- Destination MAC address and incoming port number
- **Source MAC address and incoming port number**
- Source IP address and incoming port number

**Explanation:** The switch uses the **source MAC address** from incoming frames to update its switching table along with the port number.

---

## Question 38

**In which scenarios should DTP be disabled? (Select two answers.)**

- When the neighboring switch is set to DTP dynamic auto
- When the neighboring switch is set to DTP dynamic desirable
- **When connecting a Cisco switch to a non-Cisco switch**
- **On links that are not intended to be aggregated**
- On links that should attempt dynamic aggregation

**Explanation:** It is recommended to disable DTP on links that are not meant for aggregation and when connecting to third-party equipment.

---

## Question 39

**What happens to the switch ports after the VLAN they are assigned to is deleted?**

- The ports are shut down.
- **The ports stop communicating with devices.**
- The ports are placed in trunk mode.
- The ports are reassigned to the default VLAN (VLAN 1).

**Explanation:** Deleting a VLAN automatically returns the associated ports to the **default VLAN (VLAN 1)**, which may interrupt communication if the devices were relying on the deleted VLAN.

---

## Question 40

**In a router-on-a-stick topology, what is required to allow communication between VLAN 15 and VLAN 30?**

- A router with at least two LAN interfaces is required.
- A multilayer switch is required.
- Two separate switch groups, one for each VLAN, are required.
- **A switch port configured as a trunk (uplink) is required to connect to the router.**

**Explanation:** In router-on-a-stick, the switch must have a port configured in trunk mode (uplink) to the router to carry multiple VLANs for inter-VLAN routing.

---

## Question 41

**Examine the diagram. A network administrator configures router RT1 for inter-VLAN routing, but hosts Host1, Host2, and Host3 cannot communicate with each other. What is the likely cause based on the router configuration?**

![CCNA2 v7 Modules 1 - 4 Switching Concepts, VLANs, and InterVLAN Routing Exam Answers – Question 41](https://ccnareponses.com/wp-content/uploads/2022/06/CCNA2-v7-Modules-1-4-Switching-Concepts-VLANs-and-InterVLAN-Routing-Exam-Answers-46.png)

- **The IP addresses on the subinterfaces are not correctly mapped to the respective VLANs.**
- Each subinterface requires its own no shutdown command.
- Routers do not support 802.1Q encapsulation on subinterfaces.
- The Fa0/0 interface lacks an IP address configuration.

**Explanation:** Incorrect IP addressing on the subinterfaces (which must match the addressing scheme for each VLAN) prevents inter-VLAN communication.

---

## Question 42

**What is the effect of the command `BranchSw(config-if)# mdix auto` on a Cisco 2960 switch?**

- **It automatically adjusts the port to allow the use of either a straight-through or crossover cable.**
- It updates the MAC address table for the associated port.
- It allows configuration of an IPv6 address on a physical interface.
- It assigns an IPv4 address to the virtual interface.
- It assigns an IPv6 address to the virtual interface.

**Explanation:** The **mdix auto** command enables the interface to automatically detect the cable type (straight-through or crossover) and adjust accordingly.

---

## Question 43

**Which type of VLAN is designed to ensure a delay of less than 150 ms?**

- Trunk VLAN
- Desirable VLAN
- **Voice VLAN**
- Security VLAN

**Explanation:** The **voice VLAN** is optimized for voice traffic, which requires low latency.

---

## Question 44

**What is a characteristic of an IPv4 loopback interface on a Cisco IOS router?**

- Only one loopback interface can be active on a router.
- It is associated with a physical port and is connectable to other devices.
- **It is a logical interface internal to the router.**
- The no shutdown command is required to activate it.

**Explanation:** A loopback interface is a **logical** interface that remains up as long as the router is operational.

---

## Question 45

**What is the minimum frame size in Ethernet to avoid being discarded?**

- **64 bytes**
- 512 bytes
- 1024 bytes
- 1500 bytes

**Explanation:** The minimum Ethernet frame size is **64 bytes**; frames smaller than this are considered runt frames and are dropped.

---

## Question 46

**Which type of VLAN should not carry voice and network management traffic?**

- Trunk VLAN
- Security VLAN
- **Data VLAN**
- Voice VLAN

**Explanation:** A **data VLAN** is intended for user data traffic and is not meant to carry voice or management traffic.

---

## Question 47

**Examine the diagram. A network administrator has configured the CiscoVille router with commands for inter-VLAN routing. Which command is required on the switch connected to the router’s Gi0/0 interface to allow inter-VLAN routing?**

- switchport mode access
- no switchport
- switchport mode dynamic desirable
- **switchport mode trunk**

**Explanation:** For a router-on-a-stick configuration, the switch port must be set to **trunk** mode to carry all VLANs between the switch and the router.

---

## Question 48

**In a router-on-a-stick configuration, how many subinterfaces are required if each VLAN is to be routed separately?**

![Pasted image 20250217232014.png]

- 1
- 2
- 3
- **4**
- 5

**Explanation:** The diagram indicates four distinct VLANs, requiring one subinterface per VLAN, for a total of **4** subinterfaces.

---

## Question 49

**How many broadcast domains are shown in the diagram?**

![Pasted image 20250217232025.png]

- 16
- 1
- 55
- **8**
- 4

**Explanation:** By counting the links between routers and LAN segments, the diagram shows **8 broadcast domains**.

---

## Question 50

**What is the effect of the command `BranchSw# configure terminal` on a Cisco 2960 switch?**

- It updates the MAC address table.
- **It enters global configuration mode.**
- It enters configuration mode for a virtual interface.
- It allows configuration of an IPv6 address on a physical interface.
- It assigns an IPv4 address to the virtual interface.

**Explanation:** The **configure terminal** command takes you into the switch’s global configuration mode.

---

## Question 51

**Which of the following describe the native VLAN? (Select two answers.)**

- **Native VLAN traffic is untagged on the trunk link.**
- **The native VLAN provides a common identifier on both ends of a trunk.**
- This VLAN is required for remote management of the switch.
- Designed to carry user-generated traffic, this type is also called the default VLAN.
- Voice traffic uses the native VLAN.

**Explanation:** The **native VLAN** is characterized by its untagged traffic on trunk links and by providing a common VLAN identifier on both sides of a trunk.

---

## Question 52

**Based on the `show trunk interfaces` command output, what can be concluded if interface G0/2 does not appear?**

![Pasted image 20250217232059.png]

- **Interface G0/2 is not configured as a trunk port.**
- VLAN 20 has not been created.
- The DTP mode on interface G0/1 is incorrectly set to dynamic auto.
- The encapsulation on interface G0/1 is incorrect.

**Explanation:** The absence of interface G0/2 in the output indicates that it is not configured in **trunk** mode.

---

## Question 53

**Examine the diagram. A technician is configuring switch SW3 to handle both voice and data traffic on port Fa0/20. What issue, if any, is present in the configuration?**

![Pasted image 20250217232109.png]

- **The command to assign the voice VLAN is incorrect.**
- The command `mls qos trust cos` should be applied to VLAN 35.
- The configuration is error-free.
- Only one VLAN can be assigned to this port.

**Explanation:** The configuration error lies in the incorrect command used to assign the voice VLAN.

---

## Question 54

**Which component helps reduce packet processing time in a switch?**

- Dual processors
- Large buffer memories
- **ASIC**
- Storage and transmission RAM

**Explanation:** **ASICs** (Application-Specific Integrated Circuits) accelerate packet processing within the switch.

---

## Question 55

![[Pasted image 20250217232213.png]]

**Match the DTP mode with its function:**

- **Dynamic auto → Passively waits for the neighbor to initiate aggregation.**
- **Nonegotiate → Requires manual configuration of aggregation or non-aggregation.**
- **Dynamic desirable → Actively attempts to form an aggregated link.**
- **Trunk → Forces the link to operate in trunk mode permanently.**

**Explanation:** Each DTP mode has a specific function:

- **Dynamic auto** waits for the neighbor to start the aggregation process.
- **Dynamic desirable** actively attempts to negotiate aggregation.
- **Nonegotiate** disables DTP negotiation entirely.
- **Trunk** forces the link into trunk mode.

---

## Question 56

![[Pasted image 20250217232225.png]]

**Examine the diagram. A network administrator has configured the CiscoVille router for inter-VLAN routing. What type of switch port is required on the switch connected to the router’s Gi0/0 interface to allow inter-VLAN routing?**

- SVI (Switched Virtual Interface)
- **Aggregated port**
- Routed port
- Access port

**Explanation:** In a router-on-a-stick configuration, the switch port connected to the router must be configured as a trunk (here shown as an aggregated port) to carry multiple VLANs.

---

## Question 57

**Refer to the diagram. A router-on-a-stick configuration has been implemented for VLANs 15, 30, and 45, as shown in the output of the `show running-config` command. PCs in VLAN 45 (network 172.16.45.0/24) are having difficulty connecting to PCs in VLAN 30 (network 172.16.30.0/24). What is the most likely error causing this problem?**

![Pasted image 20250217232428.png]

- An IP address is missing on the GigabitEthernet 0/0 interface.
- **An incorrect IP address is configured on interface GigabitEthernet 0/0.30.**
- The no shutdown command is missing on interface GigabitEthernet 0/0.30.
- The wrong VLAN is configured on interface GigabitEthernet 0/0.45.

**Explanation:** An addressing error on subinterface **Gi0/0.30** prevents communication between VLANs.

---

## Question 58

**What is the effect of the command `BranchSw(config-if)# exit`?**

- **Returns to global configuration mode.**
- Switches back to privileged EXEC mode.
- Enters user EXEC mode.
- Configures the default gateway.
- Saves the running configuration to NVRAM.

**Explanation:** The **exit** command leaves the interface configuration mode and returns to global configuration mode.

---

## Question 59

**Which type of VLAN is used to separate the network into groups of users or devices?**

- Native VLAN
- **Data VLAN**
- Voice VLAN
- Management VLAN

**Explanation:** The **data VLAN** is used to segment user or device traffic.

---

## Question 60

**After which step in the switch boot sequence is the boot loader executed?**

- **After the POST (Power-On Self Test)**
- After the flash file system is initialized
- After the CPU is initialized
- After the IOS is located

**Explanation:** The boot loader is executed **after the POST (Power-On Self Test)**.

---

## Question 61

**If the command `no switchport access vlan 30` is entered on port Fa0/11 (assigned to VLAN 30), what happens?**

- **Port Fa0/11 reverts to VLAN 1.**
- Port Fa0/11 is shut down.
- VLAN 30 is deleted.
- An error message is displayed.

**Explanation:** The command **no switchport access vlan 30** resets the port to the **default VLAN (VLAN 1)** without deleting VLAN 30.

---

## Question 62

**Which type of VLAN is specifically configured for network management traffic (SSH, Telnet, HTTPS, HTTP, SNMP)?**

- Security VLAN
- Voice VLAN
- **Management VLAN**
- Trunk VLAN

**Explanation:** The **management VLAN** is reserved for network management communications.

---

## Question 63

**What is the effect of the command `BranchSw(config-if)# ip address 172.18.33.88 255.255.255.0`?**

- It configures an IPv6 address on a physical interface.
- It updates the MAC address table for the associated port.
- It assigns an IPv6 address to the virtual interface.
- **It assigns an IPv4 address to the virtual interface.**
- It activates a switch interface.

**Explanation:** This command assigns an **IPv4 address** to a virtual interface (typically an SVI) on the switch.

---

## Question 64

**Which type of VLAN carries untagged traffic?**

- **Native VLAN**
- Security VLAN
- Trunk VLAN
- Desirable VLAN

**Explanation:** The **native VLAN** is the one that carries untagged traffic on a trunk link.

---

# CCNA 2 v7 Modules 1 – 4: Switching Concepts, VLANs, and InterVLAN Routing Exam Answers

*Dec 21, 2019 | Last Updated: Oct 8, 2024*  
**CCNA v7 Course #2**

> **Astuce :** Pour rechercher une question précise, utilisez la fonction “Ctrl + F” de votre navigateur.

---

## Exam Sections

- **Checkpoint Exam:** Switching Concepts, VLANs, and Inter-VLAN Routing Exam Answers  
- **CCNA v7.0 Exam Answers**  
- **System Test Exam:** Modules 1 – 3: Basic Network Connectivity and Communications Exam Answers  
- **Modules 4 – 7:** Ethernet Concepts Exam Answers  
- **Modules 8 – 10:** Communicating Between Networks Exam Answers  
- **Modules 11 – 13:** IP Addressing Exam Answers

---

## Modules 1 – 4 of the CCNA2 – Switching, Routing and Wireless Essentials v7.0 (SRWE)

---

### Question 1

**Question :**  
Which tasks can be accomplished by using the command history feature? (Choose two.)

**Options :**
- **View a list of commands entered in a previous session.**
- Recall up to 15 command lines by default.
- Set the command history buffer size.
- **Recall previously entered commands.**
- Save command lines in a log file for future reference.

**Explanation :**  
La commande *history* permet de visualiser et de réutiliser les commandes précédemment entrées dans le buffer, ainsi que de gérer ce buffer.

---

### Question 2

**Question :**  
What is the first action in the boot sequence when a switch is powered on?

**Options :**
- load the default Cisco IOS software  
- load boot loader software  
- low-level CPU initialization  
- **load a power-on self-test program**

**Explanation :**  
La première action lors de la mise sous tension est l'exécution du POST (Power-On Self-Test) qui teste le CPU, la mémoire et le flash.

---

### Question 3

**Question :**  
What must an administrator have in order to reset a lost password on a router?

**Options :**
- a TFTP server  
- a crossover cable  
- access to another router  
- **physical access to the router**

**Explanation :**  
La récupération de mot de passe requiert l'accès physique (via la console) au routeur.

---

### Question 4

**Question :**  
When configuring a switch for SSH access, what other command that is associated with the `login local` command is required to be entered on the switch?

**Options :**
- enable secret password  
- password password  
- **username username secret secret**  
- login block-for seconds attempts number within*seconds*

**Explanation :**  
Pour utiliser `login local`, il faut avoir défini au préalable un utilisateur local avec une commande du type `username [nom] secret [mot de passe]`.

---

### Question 5

**Question :**  
Which command displays information about the auto-MDIX setting for a specific interface?

**Options :**
- show interfaces  
- **show controllers**  
- show processes  
- show running-config

**Explanation :**  
Pour examiner l'auto-MDIX d'une interface, on utilise la commande `show controllers ethernet-controller [interface] phy`.

---

### Question 6

**Question :**  
If one end of an Ethernet connection is configured for full duplex and the other end for half duplex, where would late collisions be observed?

**Options :**
- on both ends of the connection  
- on the full-duplex end of the connection  
- only on serial interfaces  
- **on the half-duplex end of the connection**

**Explanation :**  
Les communications en full duplex ne produisent pas de collisions ; en cas de configuration mixte, les collisions se produisent sur le côté half duplex.

---

### Question 7

**Question :**  
Which command is used to set the BOOT environment variable that defines where to find the IOS image file on a switch?

**Options :**
- config-register  
- **boot system**  
- boot loader  
- confreg

**Explanation :**  
La commande `boot system` permet de définir la variable d’environnement BOOT indiquant l’emplacement de l’image IOS.

---

### Question 8

**Question :**  
What does a switch use to locate and load the IOS image?

**Options :**
- **BOOT environment variable**  
- IOS image file  
- POST  
- startup-config  
- NVRAM

**Explanation :**  
Le switch utilise la variable d’environnement BOOT pour localiser et charger l’image IOS.

---

### Question 9

**Question :**  
Which protocol adds security to remote connections?

**Options :**
- FTP  
- HTTP  
- NetBEUI  
- POP  
- **SSH**

**Explanation :**  
SSH permet une connexion sécurisée à distance, contrairement aux autres protocoles listés.

---

### Question 10

**Question :**  
What is a characteristic of an IPv4 loopback interface on a Cisco IOS router?

**Options :**
- The no shutdown command is required to place this interface in an UP state.  
- **It is a logical interface internal to the router.**  
- Only one loopback interface can be enabled on a router.  
- It is assigned to a physical port and can be connected to other devices.

**Explanation :**  
L’interface loopback est une interface logique, toujours en état UP, et il est possible d’en configurer plusieurs sur un routeur.

---

### Question 11

**Question :**  
What is the minimum Ethernet frame size that will not be discarded by the receiver as a runt frame?

**Options :**
- **64 bytes**  
- 512 bytes  
- 1024 bytes  
- 1500 bytes

**Explanation :**  
La taille minimale d’une trame Ethernet est de 64 octets.

---

### Question 12

**Question :**  
After which step of the switch bootup sequence is the boot loader executed?

**Options :**
- after CPU initialization  
- after IOS localization  
- after flash file system initialization  
- **after POST execution**

**Explanation :**  
Le boot loader est exécuté juste après l’exécution du POST.

---

### Question 13

**Question :**  
Which impact does adding a Layer 2 switch have on a network?

**Options :**
- an increase in the number of dropped frames  
- **an increase in the size of the broadcast domain**  
- an increase in the number of network collisions  
- an increase in the size of the collision domain

**Explanation :**  
L’ajout d’un switch de couche 2 divise les domaines de collision (chaque port est un domaine à part) mais agrandit le domaine de broadcast, puisque les trames de diffusion sont transmises sur l’ensemble des ports.

---

### Question 14

**Question :**  
Which characteristic describes cut-through switching?

**Options :**
- Error-free fragments are forwarded, so switching occurs with lower latency.  
- **Frames are forwarded without any error checking.**  
- Only outgoing frames are checked for errors.  
- Buffering is used to support different Ethernet speeds.

**Explanation :**  
Le cut-through switching transmet la trame dès que l’adresse de destination est lue, sans effectuer de vérification d’erreur ni de mise en tampon.

---

### Question 15

**Question :**  
What is the significant difference between a hub and a Layer 2 LAN switch?

**Options :**
- **A hub extends a collision domain, and a switch divides collision domains.**  
- A hub divides collision domains, and a switch divides broadcast domains.  
- Each port of a hub is a collision domain, and each port of a switch is a broadcast domain.  
- A hub forwards frames, and a switch forwards only packets.

**Explanation :**  
Un hub étend un domaine de collision tandis que chaque port d’un switch constitue un domaine de collision distinct.

---

### Question 16

**Question :**  
Which statement is correct about Ethernet switch frame forwarding decisions?

**Options :**
- **Frame forwarding decisions are based on MAC address and port mappings in the CAM table.**  
- Cut-through frame forwarding ensures that invalid frames are always dropped.  
- Only frames with a broadcast destination address are forwarded out all active switch ports.  
- Unicast frames are always forwarded regardless of the destination MAC address.

**Explanation :**  
Les décisions de commutation reposent sur l’adresse MAC et la table CAM qui associe adresses et ports.

---

### Question 17

**Question :**  
How do switch buffers affect network performance?

**Options :**
- They provide error checking on the data received.  
- **They store frames received, thus preventing premature frame discarding when network congestion occurs.**  
- They provide extra memory for a particular port if autonegotiation of speed or duplex fails.  
- They hold data temporarily when a collision occurs until normal data transmission resumes.

**Explanation :**  
Les buffers permettent de stocker temporairement les trames en cas de congestion, évitant ainsi leur perte.

---

### Question 18

**Question :**  
Which switch characteristic helps keep traffic local and alleviates network congestion?

**Options :**
- **high port density**  
- fast port speed  
- large frame buffers  
- fast internal switching

**Explanation :**  
Une haute densité de ports permet de garder localement le trafic sur le switch, réduisant ainsi la charge sur le réseau.

---

### Question 19

**Question :**  
Which switch component reduces the amount of packet handling time inside the switch?

**Options :**
- **ASIC**  
- dual processors  
- large buffer size  
- store-and-forward RAM

**Explanation :**  
Les ASIC (circuits intégrés spécifiques à l’application) accélèrent le traitement des paquets à l’intérieur du switch.

---

### Question 20

**Question :**  
Refer to the exhibit. A switch receives a Layer 2 frame that contains a source MAC address of 000b.a023.c501 and a destination MAC address of 0050.0fae.75aa. Place the switch steps in the order they occur. (Not all options are used.)

**Exhibit :**  
![Exhibit for Question 20](exhibit_q20.png)

**Réponse (ordre des étapes) :**
1. **Learn the source MAC address and its associated port.**  
2. **Check the MAC address table for the destination MAC address.**  
3. **If the destination is found, forward the frame to the corresponding port; otherwise, flood the frame out of all ports (sauf celui d’entrée).**

**Explanation :**  
Le switch commence par « apprendre » l’adresse source, puis il recherche l’adresse de destination pour décider de transmettre ou d’inonder la trame.

---

### Question 21

**Question :**  
What information is added to the switch table from incoming frames?

**Options :**
- **source MAC address and incoming port number**  
- destination MAC address and incoming port number  
- source IP address and incoming port number  
- destination IP address and incoming port number

**Explanation :**  
Le switch enregistre l’adresse source et le port d’où provient la trame pour construire sa table MAC.

---

### Question 22

**Question :**  
Which switching method ensures that the incoming frame is error-free before forwarding?

**Options :**
- cut-through  
- FCS  
- fragment free  
- **store-and-forward**

**Explanation :**  
La méthode store-and-forward vérifie l’intégrité de la trame (via le FCS) avant de la transmettre.

---

### Question 23

**Question :**  
Refer to the exhibit. How many broadcast domains are displayed?

**Options :**
- 1  
- 4  
- **8**  
- 16  
- 55

**Exhibit :**  
![Exhibit for Question 23](exhibit_q23.png)

**Explanation :**  
Dans l’exemple, 4 liens entre routeurs (chacun formant un domaine) plus 4 LAN connectés donnent un total de 8 domaines de broadcast.

---

### Question 24

**Question :**  
Under which two occasions should an administrator disable DTP while managing a local area network? (Choose two.)

**Options :**
- **when connecting a Cisco switch to a non-Cisco switch**  
- when a neighbor switch uses a DTP mode of dynamic auto  
- when a neighbor switch uses a DTP mode of dynamic desirable  
- **on links that should not be trunking**  
- on links that should dynamically attempt trunking

**Explanation :**  
Les meilleures pratiques Cisco recommandent de désactiver DTP sur les liens où le trunking n’est pas souhaité et lorsqu’un switch Cisco est connecté à un équipement non-Cisco.

---

### Question 25

**Question :**  
Which two characteristics describe the native VLAN? (Choose two.)

**Options :**
- Designed to carry traffic that is generated by users, this type of VLAN is also known as the default VLAN.
- **The native VLAN traffic will be untagged across the trunk link.**
- This VLAN is necessary for remote management of a switch.
- High priority traffic, such as voice traffic, uses the native VLAN.
- **The native VLAN provides a common identifier to both ends of a trunk.**

**Explanation :**  
Le native VLAN (souvent différent de VLAN1) permet le transport d’un trafic non tagué sur un lien trunk et offre une identification commune aux deux extrémités du trunk.

---

### Question 26

**Question :**  
On a switch that is configured with multiple VLANs, which command will remove only VLAN 100 from the switch?

**Options :**
- Switch# delete flash:vlan.dat  
- Switch(config-if)# no switchport access vlan 100  
- Switch(config-if)# no switchport trunk allowed vlan 100  
- **Switch(config)# no vlan 100**

**Explanation :**  
Pour supprimer une seule VLAN (VLAN 100), la commande appropriée est `no vlan 100` en mode de configuration globale.

---

### Question 27

**Question :**  
Refer to the exhibit. A network administrator is reviewing port and VLAN assignments on switch S2 and notices that interfaces Gi0/1 and Gi0/2 are not included in the output. Why would the interfaces be missing from the output?

**Options :**
- There is a native VLAN mismatch between the switches.
- There is no media connected to the interfaces.
- They are administratively shut down.
- **They are configured as trunk interfaces.**

**Explanation :**  
Les interfaces configurées en mode trunk ne figurent pas dans la sortie de la commande `show vlan brief` car elles ne sont pas assignées à un VLAN d’accès.

---

### Question 28

**Question :**  
A network contains multiple VLANs spanning multiple switches. What happens when a device in VLAN 20 sends a broadcast Ethernet frame?

**Options :**
- All devices in all VLANs see the frame.
- Devices in VLAN 20 and the management VLAN see the frame.
- **Only devices in VLAN 20 see the frame.**
- Only devices that are connected to the local switch see the frame.

**Explanation :**  
Les trames de diffusion sont confinées au sein de leur VLAN respectif.

---

### Question 29

**Question :**  
Refer to the exhibit. All workstations are configured correctly in VLAN 20. Workstations that are connected to switch SW1 are not able to send traffic to workstations on SW2. What could be done to remedy the problem?

**Options :**
- **Allow VLAN 20 on the trunk link.**  
- Enable DTP on both ends of the trunk.
- Configure all workstations on SW1 to be part of the default VLAN.
- Configure all workstations on SW2 to be part of the native VLAN.

**Explanation :**  
Pour que les PC en VLAN 20 puissent communiquer, le trunk doit autoriser le passage de la VLAN 20.

---

### Question 30

**Question :**  
What happens to switch ports after the VLAN to which they are assigned is deleted?

**Options :**
- The ports are disabled.
- The ports are placed in trunk mode.
- **The ports are assigned to VLAN1, the default VLAN.**
- The ports stop communicating with the attached devices.

**Explanation :**  
Lorsqu’une VLAN est supprimée, les ports associés reviennent généralement à la VLAN par défaut (VLAN1).

---

### Question 31

**Question :**  
Match the IEEE 802.1Q standard VLAN tag field with the description. (Not all options are used.)

**Explanation :**  
L’en-tête IEEE 802.1Q comprend un tag de 4 octets :
- **Type – A 2-byte value called the tag protocol ID (TPID).**
- **User priority – A 3-bit value that supports level of service.**
- **Canonical Format Identifier (CFI) – A 1-bit identifier.**
- **VLAN ID (VID) – A 12-bit VLAN identification number.**

---

### Question 32

**Question :**  
Refer to the exhibit. In what switch mode should port G0/1 be assigned if Cisco best practices are being used?

**Options :**
- access  
- **trunk**  
- native  
- auto

**Explanation :**  
Pour une configuration inter-VLAN (router-on-a-stick), le port doit être en mode trunk.

---

### Question 33

**Question :**  
Match the DTP mode with its function. (Not all options are used.)

**Explanation :**  
- **Dynamic auto – The interface becomes a trunk if the neighboring interface is set to trunk or desirable mode.**  
- **Dynamic desirable – The interface actively attempts to convert the link to a trunk link.**  
- **Trunk – Puts the interface into permanent trunking mode.**  
- **Nonegotiate – Prevents the interface from generating DTP frames.**

---

### Question 34

**Question :**  
Port Fa0/11 on a switch is assigned to VLAN 30. If the command `no switchport access vlan 30` is entered on the Fa0/11 interface, what will happen?

**Options :**
- Port Fa0/11 will be shutdown.
- An error message would be displayed.
- **Port Fa0/11 will be returned to VLAN 1.**
- VLAN 30 will be deleted.

**Explanation :**  
Cette commande réattribue le port à la VLAN par défaut (VLAN1) sans supprimer la VLAN 30.

---

### Question 35

**Question :**  
Which command displays the encapsulation type, the voice VLAN ID, and the access mode VLAN for the Fa0/1 interface?

**Options :**
- show vlan brief  
- **show interfaces Fa0/1 switchport**  
- show mac address-table interface Fa0/1  
- show interfaces trunk

**Explanation :**  
La commande `show interfaces switchport` fournit ces informations pour l’interface spécifiée.

---

### Question 36

**Question :**  
Refer to the exhibit. A technician is programming switch SW3 to manage voice and data traffic through port Fa0/20. What, if anything, is wrong with the configuration?

**Options :**
- There is nothing wrong with the configuration.
- Interface Fa0/20 can only have one VLAN assigned.
- The mls qos trust cos command should reference VLAN 35.
- **The command used to assign the voice VLAN to the switch port is incorrect.**

**Explanation :**  
La configuration doit utiliser la commande `switchport voice vlan 150` pour assigner la VLAN vocale correctement.

---

### Question 37

**Question :**  
Which four steps are needed to configure a voice VLAN on a switch port? (Choose four).

**Options :**
- Configure the interface as an IEEE 802.1Q trunk.
- **Assign the voice VLAN to the switch port.**
- Activate spanning-tree PortFast on the interface.
- **Ensure that voice traffic is trusted and tagged with a CoS priority value.**
- Add a voice VLAN.
- Configure the switch port interface with subinterfaces.
- **Assign a data VLAN to the switch port.**
- **Configure the switch port in access mode.**

**Explanation :**  
Pour ajouter un IP phone, il faut configurer le port en mode access, assigner la data VLAN, configurer la VLAN vocale avec la commande appropriée et activer `mls qos trust cos` pour le trafic vocal.

---

### Question 38

**Question :**  
Refer to the exhibit. PC1 is unable to communicate with server 1. The network administrator issues the `show interfaces trunk` command to begin troubleshooting. What conclusion can be made based on the output of this command?

**Options :**
- **Interface G0/2 is not configured as a trunk.**  
- VLAN 20 has not been created.
- The encapsulation on interface G0/1 is incorrect.
- The DTP mode is incorrectly set to dynamic auto on interface G0/1.

**Explanation :**  
L’absence de l’interface G0/2 dans la sortie suggère qu’elle n’est pas configurée en mode trunk.

---

### Question 39

**Question :**  
Refer to the exhibit. What is the cause of the error that is displayed in the configuration of inter-VLAN routing on router CiscoVille?

**Options :**
- The gig0/0 interface does not support inter-VLAN routing.
- The no shutdown command has not been configured.
- The IP address on CiscoVille is incorrect.
- **The encapsulation dot1Q 20 command has not been configured.**

**Explanation :**  
L’erreur provient de l’absence de la commande d’encapsulation pour la VLAN 20.

---

### Question 40

**Question :**  
Refer to the exhibit. A network administrator has configured router CiscoVille with the above commands to provide inter-VLAN routing. What command will be required on a switch that is connected to the Gi0/0 interface on router CiscoVille to allow inter-VLAN routing?

**Options :**
- switchport mode access  
- no switchport  
- **switchport mode trunk**  
- switchport mode dynamic desirable

**Explanation :**  
Pour un routeur-on-a-stick, le port connecté au routeur doit être configuré en mode trunk.

---

### Question 41

**Question :**  
A high school uses VLAN15 for the laboratory network and VLAN30 for the faculty network. What is required to enable communication between these two VLANs while using the router-on-a-stick approach?

**Options :**
- A multilayer switch is needed.
- A router with at least two LAN interfaces is needed.
- Two groups of switches are needed, each with ports that are configured for one VLAN.
- **A switch with a port that is configured as a trunk is needed when connecting to the router.**

**Explanation :**  
La méthode router-on-a-stick utilise un routeur avec des sous-interfaces et nécessite que le port du switch connecté soit en mode trunk.

---

### Question 42

**Question :**  
When routing a large number of VLANs, what are two disadvantages of using the router-on-a-stick inter-VLAN routing method rather than the multilayer switch inter-VLAN routing method? (Choose two.)

**Options :**
- Multiple SVIs are needed.
- **A dedicated router is required.**
- Router-on-a-stick requires subinterfaces to be configured on the same subnets.
- Router-on-a-stick requires multiple physical interfaces on a router.
- **Multiple subinterfaces may impact the traffic flow speed.**

**Explanation :**  
Cette méthode nécessite un routeur dédié et la circulation de tout le trafic via une seule interface physique, ce qui peut impacter les performances.

---

### Question 43

**Question :**  
Refer to the exhibit. A network administrator is verifying the configuration of inter-VLAN routing. Users complain that PCs on different VLANs cannot communicate. Based on the output, what are two configuration errors on switch interface Gi1/1? (Choose two.)

**Options :**
- **Gi1/1 is in the default VLAN.**  
- Voice VLAN is not assigned to Gi1/1.
- **Gi1/1 is configured as trunk mode.**  
- Negotiation of trunking is turned on on Gi1/1.
- The trunking encapsulation protocol is configured wrong.

**Explanation :**  
Pour une configuration inter-VLAN classique, le port connecté au routeur doit être en mode access avec la VLAN correcte et non en mode trunk.

---

### Question 44

**Question :**  
Refer to the exhibit. A network administrator is verifying the configuration of inter-VLAN routing. Users complain that PC2 cannot communicate with PC1. Based on the output, what is the possible cause of the problem?

**Options :**
- Gi0/0 is not configured as a trunk port.
- The command interface GigabitEthernet0/0.5 was entered incorrectly.
- There is no IP address configured on the interface Gi0/0.
- The no shutdown command is not entered on subinterfaces.
- **The encapsulation dot1Q 5 command contains the wrong VLAN.**

**Explanation :**  
La configuration de la sous-interface doit correspondre à la VLAN du PC ; ici, l’encapsulation spécifie le mauvais numéro de VLAN.

---

### Question 45

**Question :**  
Refer to the exhibit. A network administrator has configured router CiscoVille with the above commands to provide inter-VLAN routing. What type of port will be required on a switch that is connected to Gi0/0 on router CiscoVille to allow inter-VLAN routing?

**Options :**
- routed port  
- access port  
- **trunk port**  
- SVI

**Explanation :**  
Pour un router-on-a-stick, le port du switch connecté au routeur doit être en mode trunk.

---

### Question 46

**Question :**  
Refer to the exhibit. A network administrator is configuring RT1 for inter-VLAN routing. The switch is configured correctly and is functional. Host1, Host2, and Host3 cannot communicate with each other. Based on the router configuration, what is causing the problem?

**Options :**
- Interface Fa0/0 is missing IP address configuration information.
- **IP addresses on the subinterfaces are incorrectly matched to the VLANs.**
- Each subinterface of Fa0/0 needs separate no shutdown commands.
- Routers do not support 802.1Q encapsulation on subinterfaces.

**Explanation :**  
Les adresses IP attribuées aux sous-interfaces ne correspondent pas aux sous-réseaux définis pour chaque VLAN.

---

### Question 47

**Question :**  
Refer to the exhibit. A router-on-a-stick configuration was implemented for VLANs 15, 30, and 45, according to the show running-config command output. PCs on VLAN 45 that are using the 172.16.45.0/24 network are having trouble connecting to PCs on VLAN 30 in the 172.16.30.0/24 network. Which error is most likely causing this problem?

**Options :**
- The wrong VLAN has been configured on GigabitEthernet 0/0.45.
- The command no shutdown is missing on GigabitEthernet 0/0.30.
- The GigabitEthernet 0/0 interface is missing an IP address.
- **There is an incorrect IP address configured on GigabitEthernet 0/0.30.**

**Explanation :**  
L’adresse IP de la sous-interface pour la VLAN 30 ne correspond pas au schéma d’adressage attendu.

---

### Question 48

**Question :**  
What is a characteristic of a routed port on a Layer 3 switch?

**Options :**
- It supports trunking.
- **It is not assigned to a VLAN.**
- It is commonly used as a WAN link.
- It cannot have an IP address assigned to it.

**Explanation :**  
Un port routé sur un switch de couche 3 est configuré avec une adresse IP et n’appartient pas à une VLAN.

---

### Question 49

**Question :**  
Refer to the exhibit. A network administrator needs to configure router-on-a-stick for the networks that are shown. How many subinterfaces will have to be created on the router if each VLAN that is shown is to be routed and each VLAN has its own subinterface?

**Options :**
- 1  
- 2  
- 3  
- **4**  
- 5

**Explanation :**  
D’après l’adressage, il y a 4 VLAN distincts nécessitant 4 sous-interfaces.

---

### Question 50

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw(config-if)# mdix auto` command?

**Options :**
- **It automatically adjusts the port to allow device connections to use either a straight-through or a crossover cable.**
- It applies an IPv4 address to the virtual interface.
- It applies an IPv6 address to the virtual interface.
- It permits an IPv6 address to be configured on a switch physical interface.
- It updates the MAC address table for the associated port.

**Explanation :**  
La commande `mdix auto` permet à l’interface de s’adapter automatiquement au type de câble utilisé.

---

### Question 51

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw(config-if)# ip address 172.18.33.88 255.255.255.0` command?

**Options :**
- **It applies an IPv4 address to the virtual interface.**
- It applies an IPv6 address to the virtual interface.
- It activates a virtual or physical switch interface.
- It permits an IPv6 address to be configured on a switch physical interface.
- It updates the MAC address table for the associated port.

**Explanation :**  
Cette commande attribue une adresse IPv4 à l’interface spécifiée.

---

### Question 52

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw# configure terminal` command?

**Options :**
- **It enters the global configuration mode.**
- It enters configuration mode for a switch virtual interface.
- It applies an IPv4 address to the virtual interface.
- It updates the MAC address table for the associated port.
- It permits an IPv6 address to be configured on a switch physical interface.

**Explanation :**  
La commande `configure terminal` permet d’entrer en mode de configuration globale.

---

### Question 53

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw# configure terminal` command? *(Question répétée)*

**Options :**
- **It enters the global configuration mode.**
- It saves the running configuration to NVRAM.
- It disables a virtual or physical switch interface.
- It updates the MAC address table for the associated port.
- It saves the startup configuration to the running configuration.

**Explanation :**  
Identique à la question précédente, cette commande lance le mode de configuration globale.

---

### Question 54

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw(config-if)# shutdown` command?

**Options :**
- **It disables a virtual or physical switch interface.**
- It saves the running configuration to NVRAM.
- It activates a virtual or physical switch interface.
- It updates the MAC address table for the associated port.
- It saves the startup configuration to the running configuration.

**Explanation :**  
La commande `shutdown` désactive l’interface.

---

### Question 55

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw(config-if)# shutdown` command? *(Question répétée)*

**Options :**
- **It disables a virtual or physical switch interface.**
- It applies an IPv6 address to the virtual interface.
- It applies an IPv4 address to the virtual interface.
- It permits an IPv6 address to be configured on a switch physical interface.
- It updates the MAC address table for the associated port.

**Explanation :**  
Comme précédemment, cette commande désactive l’interface.

---

### Question 56

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw(config-if)# ipv6 address 2001:db8:a2b4:88::1/64` command?

**Options :**
- **It applies an IPv6 address to the virtual interface.**
- It activates a virtual or physical switch interface.
- It applies an IPv4 address to the virtual interface.
- It permits an IPv6 address to be configured on a switch physical interface.
- It updates the MAC address table for the associated port.

**Explanation :**  
Cette commande attribue une adresse IPv6 à l’interface.

---

### Question 57

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw(config-if)# exit` command?

**Options :**
- **It returns to global configuration mode.**
- It returns to privileged mode.
- It configures the default gateway for the switch.
- It enters user mode.
- It saves the startup configuration to the running configuration.

**Explanation :**  
La commande `exit` permet de sortir du mode de configuration d’interface pour revenir au mode de configuration globale.

---

### Question 58

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw> enable` command?

**Options :**
- **It enters privileged mode.**
- It enters the global configuration mode.
- It enters configuration mode for a switch virtual interface.
- It updates the MAC address table for the associated port.
- It permits an IPv6 address to be configured on a switch physical interface.

**Explanation :**  
La commande `enable` passe en mode EXEC privilégié.

---

### Question 58 (bis)

**Question :**  
A technician is configuring a new Cisco 2960 switch. What is the effect of issuing the `BranchSw(config-if)# duplex full` command?

**Options :**
- **It allows data to flow in both directions at the same time on the interface.**
- It allows data to flow in only one direction at a time on the interface.
- It automatically adjusts the port to allow device connections to use either a straight-through or a crossover cable.
- It configures the switch as the default gateway.
- It encrypts user-mode passwords when users connect remotely.

**Explanation :**  
La commande configure le port en full duplex, autorisant une communication bidirectionnelle simultanée.

---

### Question 60

**Question :**  
What type of VLAN should not carry voice and network management traffic?

**Options :**
- **data VLAN**
- voice VLAN
- management VLAN
- security VLAN

**Explanation :**  
Le trafic vocal et de gestion doit être séparé ; la data VLAN est dédiée au trafic utilisateur.

---

### Question 62

**Question :**  
What type of VLAN is designed to reserve bandwidth to ensure IP Phone quality?

**Options :**
- **voice VLAN**
- trunk VLAN
- security VLAN
- management VLAN

**Explanation :**  
La voice VLAN est configurée pour réserver de la bande passante en vue d’assurer la qualité des communications IP.

---

### Question 63

**Question :**  
What type of VLAN is initially the management VLAN?

**Options :**
- **default VLAN**
- native VLAN
- data VLAN
- management VLAN

**Explanation :**  
Par défaut, la VLAN 1 (default VLAN) est utilisée pour la gestion du switch.

---

### Question 64

**Question :**  
What type of VLAN is designed to have a delay of less than 150 ms across the network?

**Options :**
- **voice VLAN**
- desirable VLAN
- trunk VLAN
- security VLAN

**Explanation :**  
La voice VLAN est optimisée pour des délais très faibles (inférieurs à 150 ms) afin de supporter la voix sur IP.

---

### Question 65

**Question :**  
What type of VLAN is used to separate the network into groups of users or devices?

**Options :**
- **data VLAN**
- management VLAN
- voice VLAN
- native VLAN

**Explanation :**  
Les data VLAN sont employées pour segmenter le réseau en groupes d’utilisateurs ou de dispositifs.

---

### Question 66

**Question :**  
What type of VLAN is configured specifically for network traffic such as SSH, Telnet, HTTPS, HTTP, and SNMP?

**Options :**
- **management VLAN**
- security VLAN
- trunk VLAN
- voice VLAN

**Explanation :**  
La management VLAN est dédiée aux communications de gestion du réseau.

---

### Question 68

**Question :**  
What type of VLAN supports untagged traffic?

**Options :**
- **native VLAN**
- voice VLAN
- security VLAN
- management VLAN

**Explanation :**  
Le native VLAN est utilisé pour transporter le trafic non tagué sur un lien trunk.

---

### Question 69

**Question :**  
What type of VLAN supports untagged traffic?

**Options :**
- **native VLAN**
- desirable VLAN
- trunk VLAN
- security VLAN

**Explanation :**  
Identique à la question précédente, la réponse est le native VLAN.

---

### Question 70

**Question :**  
Refer to the exhibit. A network administrator has configured R1 as shown. When the administrator checks the status of the serial interface, the interface is shown as being administratively down. What additional command must be entered on the serial interface of R1 to bring the interface up?

**Options :**
- IPv6 enable  
- clockrate 128000  
- end  
- **no shutdown**

**Explanation :**  
Les interfaces de routeur sont, par défaut, en état "shutdown". Il faut donc utiliser la commande `no shutdown`.

---

### Question 71

**Question :**  
Refer to the exhibit. The network administrator wants to configure Switch1 to allow SSH connections and prohibit Telnet connections. How should the network administrator change the displayed configuration to satisfy the requirement?

**Options :**
- Use SSH version 1.
- Reconfigure the RSA key.
- Configure SSH on a different line.
- **Modify the transport input command.**

**Explanation :**  
Pour autoriser uniquement SSH et refuser Telnet, il convient de modifier la commande `transport input` sur les lignes vty.

---

### Question 72

**Question :**  
Which solution would help a college alleviate network congestion due to collisions?

**Options :**
- a firewall that connects to two Internet providers  
- **a high port density switch**  
- a router with two Ethernet ports  
- a router with three Ethernet ports

**Explanation :**  
Un switch à haute densité de ports permet de segmenter le réseau et d’éliminer pratiquement les collisions.

---

### Question 73

**Question :**  
Which two statements are correct with respect to SVI inter-VLAN routing? (Choose two.)

**Options :**
- **Switching packets is faster with SVI.**  
- **There is no need for a connection to a router.**  
- Virtual interfaces support subinterfaces.
- SVIs can be bundled into EtherChannels.
- SVIs eliminate the need for a default gateway in the hosts.

**Explanation :**  
Le routage via SVI est plus rapide puisque le switch interne route sans recourir à un routeur physique, éliminant ainsi la nécessité d’une connexion externe.

---

### Question 74

**Question :**  
Refer to the exhibit. A network administrator is configuring inter-VLAN routing on a network. For now, only one VLAN is being used, but more will be added soon. What is the missing parameter that is shown as the highlighted question mark in the graphic?

**Options :**
- It identifies the subinterface.
- **It identifies the VLAN number.**
- It identifies the native VLAN number.
- It identifies the type of encapsulation that is used.
- It identifies the number of hosts that are allowed on the interface.

**Explanation :**  
La commande complétée serait `encapsulation dot1q 7` où le paramètre numérique correspond au numéro de la VLAN.

---

### Question 75

**Question :**  
Which type of VLAN is used to designate which traffic is untagged when crossing a trunk port?

**Options :**
- data  
- default  
- **native**  
- management

**Explanation :**  
La native VLAN est celle dont le trafic est non tagué lors du passage sur un lien trunk.

---

### Question 76

**Question :**  
A network administrator issues the `show vlan brief` command while troubleshooting a user support ticket. What output will be displayed?

**Options :**
- the VLAN assignment and membership for device MAC addresses
- **the VLAN assignment and membership for all switch ports**
- the VLAN assignment and trunking encapsulation
- the VLAN assignment and native VLAN

**Explanation :**  
La commande `show vlan brief` affiche l’assignation des VLAN et l’appartenance de chaque port du switch.

---

### Question 77

**Question :**  
Open the PT Activity. Perform the tasks in the activity instructions and then answer the question. Which message is displayed when 10.10.10.1 is entered into the PC1 Web Browser address bar?

**Options :**
- Local Server  
- **Test Server**  
- File Server  
- Cisco Server

**Explanation :**  
D’après la configuration observée sur SW1, l’interface concernée n’étant pas en mode trunk, le message affiché correspond au serveur de test. (Note : Cette réponse est basée sur le contexte fourni dans l’activité.)

---

### Question 78

**Question :**  
Match each DHCP message type with its description. (Not all options are used.)

**Réponses :**
- A client initiating a message to find a DHCP server – **DHCPDISCOVER**
- A DHCP server responding to the initial request by a client – **DHCPOFFER**
- The client accepting the IP address provided by the DHCP server – **DHCPREQUEST**
- The DHCP server confirming that the lease has been accepted – **DHCPACK**

**Explanation :**  
Ces correspondances représentent le déroulement normal d’un échange DHCP.

---

### Question 79

**Question :**  
What type of VLAN is configured specifically for network traffic such as SSH, Telnet, HTTPS, HTTP, and SNMP?

**Options :**
- voice VLAN  
- **management VLAN**  
- native VLAN  
- security VLAN

**Explanation :**  
La management VLAN est dédiée au trafic de gestion (SSH, Telnet, etc.).

