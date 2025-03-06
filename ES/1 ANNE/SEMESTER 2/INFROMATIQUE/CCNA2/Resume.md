# Modules 1 – 4

### I. Quelle commande est utilisée pour définir la variable d’environnement BOOT qui définit l’emplacement du fichier d’image IOS sur un commutateur ?
- config-register  
- confreg  
- boot loader  
- **boot system**  

**Explication:** La commande `boot system` sert à définir la variable d’environnement BOOT. Les commandes `config-register` et `confreg` servent à définir le registre de configuration. La commande `boot loader` prend en charge des commandes pour formater le système de fichiers flash, réinstaller le logiciel de système d’exploitation et retrouver un mot de passe perdu ou oublié.

---

### 2. Qu’est-ce qu’un commutateur utilise pour localiser et charger l’image IOS ?
- Fichier d’image IOS  
- **Variable d’environnement BOOT**  
- NVRAM  
- Configuration initiale  
- POST  

**Explication:** La variable d’environnement BOOT contient des informations sur l’emplacement où trouver le fichier image IOS.

---

### 3. Quel protocole renforce la sécurité des connexions à distance ?
- **SSH**  
- HTTP  
- NetBEUI  
- FTP  
- POP  

**Explication:** Le protocole SSH permet à un technicien de se connecter de manière sécurisée à un périphérique réseau distant à des fins de dépannage et de surveillance. Le protocole HTTP établit des demandes de pages Web. Le protocole FTP gère les transferts de fichiers, tandis que le protocole NetBEUI n’est pas utilisé sur Internet. Le protocole POP télécharge les messages électroniques depuis les serveurs de messagerie.

---

### 4. Quelle caractéristique décrit la commutation cut-through ?
- Seules les trames sortantes subissent une vérification d’erreurs.  
- Les fragments exempts d’erreurs sont transmis, la commutation se produit ainsi avec une faible latence.  
- **Les trames sont transmises sans aucune vérification d’erreurs.**  

**Explication:** La commutation cut-through réduit le temps de latence en transmettant les trames dès que l’adresse MAC de destination et le port de commutateur correspondant sont lus dans la table des adresses MAC. Cette méthode de commutation n’effectue pas de vérification des erreurs et n’utilise pas de tampons pour prendre en charge différentes vitesses d’Ethernet.

---

### 5. Quelle est la différence significative entre un concentrateur (hub) et un commutateur LAN de couche 2 ?
- Un concentrateur divise les domaines de collision, et un commutateur divise les domaines de diffusion.  
- Chaque port d’un concentrateur est un domaine de collision, et chaque port d’un switch est un domaine de diffusion.  
- **Un concentrateur étend un domaine de collision et un commutateur divise les domaines de collision.**  
- Un concentrateur transmet les cadres, et un commutateur transmet uniquement les paquets.  

**Explication:** Les hubs ne fonctionnent qu’au niveau de la couche physique, en transmettant les bits sous forme de signaux filaires vers tous les ports et en étendant le domaine de collision d’un réseau. Les commutateurs transmettent des trames à la couche de liaison de données et chaque port de commutation est un domaine de collision distinct.

---

### 6. Parmi les propositions concernant les décisions de transfert de trame de commutateur Ethernet ci-après, laquelle est vraie ?
- Seules les trames avec des adresses de destination de diffusion sont transmises à tous les ports de commutateurs actifs.  
- Le transfert de trame cut-through garantit que les trames non valides sont toujours abandonnées.  
- **Les décisions de transfert de trame sont basées sur l’adresse MAC et les mappages des ports dans la table CAM.**  
- Les trames monodiffusion sont toujours transmises indépendamment de l’adresse MAC de destination.  

**Explication:** Le transfert de trame cut-through lit uniquement les premiers 22 octets d’une trame, ce qui exclut la séquence de vérification de la trame et, par conséquent, les trames non valides peuvent être transmises.

---

### 7. Comment les tampons de commutateur affectent-ils les performances du réseau ?
- Ils conservent temporairement les données lorsqu’une collision se produit jusqu’à ce que la transmission normale des données reprenne.  
- **Ils stockent les trames reçues, empêchant ainsi le rejet prématuré des trames en cas de congestion du réseau.**  
- Ils fournissent une vérification des erreurs sur les données reçues.  
- Ils fournissent de la mémoire supplémentaire pour un port particulier en cas d’échec de la négociation automatique de la vitesse ou du duplex.  

**Explication:** Les commutateurs ont de grands tampons de trame qui permettent de stocker les données en attente de transmission afin qu’elles ne soient pas perdues.

---

### 8. Quelle caractéristique de commutateur permet de garder le trafic local et de réduire la congestion du réseau ?
- grands tampons de trame  
- Commutation interne rapide  
- vitesse de port rapide  
- **Nombre de ports élevé**  

**Explication:** Les commutateurs à haute densité de ports réduisent le nombre de commutateurs requis et gardent une partie du trafic localement sur le commutateur.

---

### 9. Examinez l’illustration. Un commutateur reçoit une trame de couche 2 dont l’adresse MAC source est 000b.a023.c501 et l’adresse MAC de destination 0050.0fae.75aa. Placez les étapes du commutateur dans l’ordre où elles se produisent.
- **Se produit en premier :** Le commutateur ajoute l’adresse MAC source à la table d’adresses MAC.  
- **Se produit en deuxième :** Comme la destination n’est pas connue, le commutateur transfère la trame vers tous les ports à l’exception de celui par lequel la trame est arrivée.  

**Explication:** Le commutateur vérifie d’abord l’adresse MAC source et l’ajoute à la table. Ensuite, il vérifie l’adresse de destination et la transmet si elle est inconnue.

---

### 10. Quelle méthode de commutation garantit que la trame entrante est sans erreur avant le transfert ?
- Coupure (Cut–Through)  
- FCS  
- Sans fragmentation (Fragment–Free)  
- **Stockage et transmission (Store–and–Forward)**  

**Explication:** La méthode store–and–forward effectue la vérification des erreurs sur la trame à l’aide de la valeur FCS avant d’envoyer la trame.

---

### 11. Sur un commutateur configuré avec plusieurs VLAN, quelle commande supprime uniquement le VLAN 100 du commutateur ?
- Switch(config-if)# no switchport access vlan 100  
- Switch(config-if)# no switchport trunk allowed vlan 100  
- Switch# delete flash:vlan.dat  
- **Switch(config)# no vlan 100**  

**Explication:** La commande `no vlan 100` supprime directement le VLAN 100 de la configuration.

---

### 12. Examinez l’illustration. Pourquoi les interfaces GIO/1 et GIO/2 ne sont-elles pas incluses dans le résultat ?
- **Les interfaces sont configurées comme interfaces d’agrégation.**  
- Les VLAN natifs ne correspondent pas entre les commutateurs.  
- Les interfaces sont arrêtées administrativement.  

**Explication:** Les interfaces configurées comme agrégations n’appartiennent pas à un VLAN et ne s’affichent donc pas dans le résultat des commandes `show vlan brief`.

---

### 13. Que se passe-t-il lorsqu’un périphérique sur le VLAN 20 envoie une trame Ethernet de diffusion ?
- Tous les périphériques de tous les VLAN voient la trame.  
- Les périphériques du VLAN 20 et le VLAN de gestion voient la trame.  
- **Seuls les périphériques du VLAN 20 voient la trame.**  
- Seuls les périphériques connectés au commutateur local voient la trame.  

**Explication:** Les VLAN créent des domaines de diffusion logiques. Les trames de diffusion restent confinées à leur VLAN d’origine.

---

### 14. Comment résoudre le problème de communication entre les stations de travail connectées à SW1 et SW2 ?
- **Autoriser le VLAN 20 sur la liaison agrégée.**  
- Configurer les stations de travail sur SW2 de sorte à les intégrer au VLAN natif.  
- Configurer les stations de travail sur SW1 de sorte à les intégrer au VLAN par défaut.  
- Activer le protocole DTP aux deux extrémités de l’agrégation.  

**Explication:** Le VLAN 20 doit être autorisé sur la liaison trunk pour permettre la communication inter-commutateurs.

---

### 15. Associez l’étiquette standard IEEE 802.1Q du VLAN à la description.
- **Type (TPID)** : Valeur de 2 octets.  
- **Priorité utilisateur** : 3 bits pour les niveaux de service.  
- **CFI** : 1 bit pour les trames Token Ring.  
- **ID de VLAN (VID)** : 12 bits pour identifier jusqu’à 4096 VLAN.  

---

### 16. Dans quel mode de commutateur le port G0/1 doit-il être attribué selon les bonnes pratiques de Cisco ?
- **trunk**  
- accès  
- auto  

**Explication:** Le routeur est utilisé pour l’acheminement entre les deux VLAN ; le port doit donc être configuré en mode trunk.

---

### 17. Quelle commande affiche le type d’encapsulation, l’ID de VLAN voix et le mode d’accès du VLAN pour l’interface Fa0/1 ?
- `show interfaces trunk`  
- `show vlan brief`  
- `show mac address-table interface Fa0/1`  
- **`show interfaces Fa0/1 switchport`**  

**Explication:** La commande `show interfaces switchport` fournit des détails complets sur la configuration du port, y compris le VLAN voix.

---

### 18. Quelles sont les quatre étapes pour configurer un VLAN voix sur un port de commutation ?
- **Configurer le port de commutation en mode d’accès.**  
- **Ajouter un VLAN voix.**  
- **Assigner un VLAN de données au port de commutation.**  
- **Assigner le VLAN voix au port de commutation.**  

**Explication:** Les étapes incluent la configuration du mode accès, la création du VLAN voix, l’assignation du VLAN de données et du VLAN voix au port.

---

### 19. Quelle est la cause de l’erreur dans la configuration du routage inter-VLAN sur le routeur CiscoVille ?
- **La commande `encapsulation dot1Q 20` n’a pas été configurée.**  
- L’interface gig0/0 ne prend pas en charge le routage inter-VLAN.  
- L’adresse IP sur CiscoVille est incorrecte.  

**Explication:** La commande `encapsulation dot1Q` est nécessaire pour identifier le VLAN associé à la sous-interface.

---

### 20. Quels sont les inconvénients du routage inter-VLAN « Router-on-a-Stick » ?
- **Un routeur dédié est nécessaire.**  
- **Plusieurs sous-interfaces peuvent affecter le débit du trafic.**  
- La méthode nécessite plusieurs interfaces physiques sur un routeur.  

**Explication:** Le routeur-on-a-stick utilise une seule interface physique avec des sous-interfaces, ce qui peut limiter la bande passante.

---

### 21. Quelles sont les erreurs de configuration de l’interface GII/1 du commutateur ?
- **L’interface GII/1 est configurée en mode d’agrégation.**  
- **L’interface GII/1 se trouve dans le VLAN par défaut.**  
- La négociation de l’agrégation est activée sur GII/1.  

**Explication:** Le port connecté au routeur doit être en mode accès et attribué au VLAN approprié, non en mode trunk.

---

### 22. Pourquoi PC2 ne peut-il pas communiquer avec PC1 ?
- **La commande `encapsulation dot1Q 5` ne contient pas le bon VLAN.**  
- La commande `interface GigabitEthernet0/0.5` est incorrecte.  
- Aucune adresse IP n’est configurée sur l’interface GIO/0.  

**Explication:** La sous-interface doit correspondre au VLAN correct (ex: `encapsulation dot1Q 10` pour le VLAN 10).

---

### 23. Quelle est une caractéristique d’un port routé sur un commutateur de couche 3 ?
- **Il n’est pas attribué à un VLAN.**  
- Il prend en charge le trunking.  
- Une adresse IP ne peut pas lui être attribuée.  

**Explication:** Un port routé de couche 3 est configuré avec une adresse IP directement et ne fait pas partie d’un VLAN.

---

### 24. Quel est l’effet de la commande `shutdown` sur une interface de commutateur ?
- **Désactiver une interface de commutation virtuelle ou physique.**  
- Mettre à jour la table d’adresses MAC.  
- Activer une interface.  

**Explication:** La commande `shutdown` désactive administrativement l’interface.

---

### 25. Quel type de VLAN est initialement le VLAN de gestion ?
- **VLAN par défaut**  
- VLAN données  
- VLAN natif  

**Explication:** Le VLAN par défaut (VLAN 1) est utilisé pour la gestion initiale.

---

### 26. Quelle commande active une interface série désactivée administrativement ?
- **`no shutdown`**  
- `clockrate 128000`  
- `IPv6 enable`  

**Explication:** La commande `no shutdown` réactive une interface désactivée.

---

### 27. Comment interdire les connexions Telnet et autoriser SSH ?
- **Modifier la commande `transport input`.**  
- Reconfigurer la clé RSA.  
- Utiliser SSH version 1.  

**Explication:** La commande `transport input ssh` restreint l’accès à SSH seulement.

---

### 28. Quelle solution réduit la congestion réseau causée par des collisions ?
- **Un commutateur à densité de ports élevée**  
- Un routeur avec trois ports Ethernet.  
- Un pare-feu.  

**Explication:** Les commutateurs segmentent les domaines de collision, réduisant ainsi les collisions.

---

### 29. Quelles sont les deux caractéristiques correctes du routage inter-VLAN SVI ?
- **Il n’y a pas besoin d’une connexion à un routeur.**  
- **La commutation de paquets est plus rapide avec SVI.**  
- Les SVIs peuvent être regroupés dans EtherChannels.  

**Explication:** Les SVI permettent un routage inter-VLAN direct sur le commutateur multicouche, sans routeur externe.

---

### 30. Quel est le rôle du paramètre manquant dans `encapsulation dot1q ?` ?
- **Il identifie le numéro du VLAN.**  
- Il identifie la sous-interface.  
- Il identifie le type d’encapsulation.  

**Explication:** La commande complète serait `encapsulation dot1Q 7` pour le VLAN 7.

---

### 31. Quel type de VLAN transporte les trames non étiquetées ?
- **VLAN natif**  
- VLAN de sécurité  
- VLAN trunk  

**Explication:** Le VLAN natif est utilisé pour les trames non étiquetées sur une liaison trunk.

---

### 32. Que montre la commande `show vlan brief` ?
- **L’affectation des VLAN et les ports associés.**  
- Les adresses MAC des périphériques.  
- L’encapsulation de trunking.  

**Explication:** Cette commande affiche la liste des VLAN et les ports qui leur sont attribués.

---

### 33. Quel message s’affiche lors de l’accès à 10.10.10.1 depuis PC1 ?
- **Serveur de fichiers**  
- Serveur local  
- Serveur Cisco  

**Explication:** La configuration correcte du trunk permet la communication, affichant le serveur de fichiers.

---

### 34. Quelle commande affiche le paramètre auto-MDIX d’une interface ?
- **`show controllers`**  
- `show processes`  
- `show interfaces`  

**Explication:** La commande `show controllers ethernet-controller` affiche les détails physiques, dont auto-MDIX.

---

### 35. Où se produisent les collisions tardives en cas de duplex mixtes ?
- **Sur l’extrémité en mode semi-duplex.**  
- Sur les deux extrémités.  
- Sur l’extrémité en full duplex.  

**Explication:** Le mode semi-duplex est sujet aux collisions, contrairement au full duplex.

---

### 36. Quel est l’impact d’ajouter un commutateur de couche 2 ?
- **Une augmentation de la taille du domaine de diffusion.**  
- Une augmentation des collisions.  
- Une augmentation des trames ignorées.  

**Explication:** Les commutateurs étendent les domaines de diffusion tout en segmentant les domaines de collision.

---

### 37. Quelles informations sont ajoutées à la table de commutation depuis les trames entrantes ?
- **Adresse MAC source et numéro de port entrant.**  
- Adresse IP source.  
- Adresse MAC de destination.  

**Explication:** Le commutateur apprend l’adresse MAC source et le port d’entrée pour construire sa table CAM.

---

### 38. Quand désactiver le protocole DTP ?
- **Pour connecter un commutateur Cisco à un commutateur tiers.**  
- **Sur les liaisons qui ne doivent pas être agrégées.**  
- Lorsqu’un voisin utilise DTP dynamic auto.  

**Explication:** DTP doit être désactivé pour éviter des agrégations non souhaitées ou avec des équipements non Cisco.

---

### 39. Que se passe-t-il si un VLAN est supprimé ?
- **Les ports cessent de communiquer.**  
- Les ports sont désactivés.  
- Les ports rejoignent le VLAN 1.  

**Explication:** Les ports doivent être reconfigurés manuellement vers un VLAN actif.

---

### 40. Quel élément est nécessaire pour le routage inter-VLAN « router-on-a-stick » ?
- **Un commutateur avec un port trunk connecté au routeur.**  
- Un commutateur multicouche.  
- Deux groupes de commutateurs.  

**Explication:** Le routeur-on-a-stick nécessite une liaison trunk entre le commutateur et le routeur.

---

### 41. Quelle est la cause du problème de communication entre Host1, Host2 et Host3 ?
- **Les adresses IP des sous-interfaces ne correspondent pas aux VLAN.**  
- Il manque `no shutdown` sur les sous-interfaces.  
- Les routeurs ne prennent pas en charge l’encapsulation 802.1Q.  

**Explication:** Les adresses IP des sous-interfaces doivent appartenir aux sous-réseaux des VLAN respectifs.

---

### 42. Quel est l’effet de la commande `auto MDIX` ?
- **Ajuste automatiquement le port pour utiliser un câble direct ou croisé.**  
- Met à jour la table MAC.  
- Configure une adresse IPv6.  

**Explication:** L’auto-MDIX détecte le type de câble et ajuste la connexion automatiquement.

---

### 43. Quel VLAN a un retard inférieur à 150 ms ?
- **VLAN voix**  
- VLAN trunk  
- VLAN de sécurité  

**Explication:** Le VLAN voix est optimisé pour la latence réduite (<150 ms) nécessaire à la VoIP.

---

### 44. Quelle est la caractéristique d’une interface loopback IPv4 ?
- **C’est une interface logique interne.**  
- Elle est connectée à un port physique.  
- Une seule interface loopback peut être active.  

**Explication:** Les interfaces loopback sont virtuelles et utilisées pour des tests ou la gestion.

---

### 45. Quelle est la taille minimale d’une trame Ethernet ?
- **64 octets**  
- 512 octets  
- 1500 octets  

**Explication:** Les trames de moins de 64 octets sont considérées comme des fragments et ignorées.

---

### 46. Quel VLAN ne doit pas transporter le trafic voix ?
- **VLAN données**  
- VLAN voix  
- VLAN natif  

**Explication:** Le trafic voix doit être isolé dans un VLAN dédié pour garantir la qualité de service.

---

### 47. Quelle commande est requise sur le commutateur connecté au routeur pour le routage inter-VLAN ?
- **`switchport mode trunk`**  
- `switchport mode access`  
- `no switchport`  

**Explication:** Le port doit être en mode trunk pour transporter plusieurs VLANs vers le routeur.

---

### 48. Combien de sous-interfaces sont nécessaires pour router 4 VLANs ?
- **4**  
- 3  
- 2  

**Explication:** Chaque VLAN nécessite une sous-interface distincte sur le routeur.

---

### 49. Combien de domaines de diffusion sont affichés dans l’illustration ?
- **8**  
- 4  
- 1  

**Explication:** Chaque LAN et chaque lien entre routeurs constitue un domaine de diffusion distinct.

---

### 50. Quel est l’effet de la commande `configure terminal` ?
- **Passer en mode de configuration globale.**  
- Entrer en mode EXEC privilégié.  
- Configurer une adresse IPv6.  

**Explication:** `configure terminal` permet d’accéder au mode de configuration globale.

---

### 51. Quelles sont les caractéristiques du VLAN natif ? (Choisissez deux réponses.)
- **Le trafic du VLAN natif n’est pas étiqueté.**  
- **Il fournit un identificateur commun aux extrémités d’une agrégation.**  
- Il est utilisé pour la gestion à distance.  

**Explication:** Le VLAN natif permet de transporter des trames non étiquetées sur une liaison trunk et doit être cohérent aux deux extrémités.

---

### 52. Quelle est la cause du problème de communication entre PCI et Serveur1 ?
- **L’interface G0/2 n’est pas configurée en tant que trunk.**  
- Le VLAN 20 n’a pas été créé.  
- L’encapsulation est incorrecte.  

**Explication:** La sortie de `show trunk interfaces` indique que l’interface n’est pas configurée comme trunk.

---

### 53. Quel est le problème dans la configuration du port Fa0/20 ?
- **La commande pour attribuer le VLAN voix est incorrecte.**  
- La commande `mls qos trust cos` est mal associée.  
- Un seul VLAN peut être assigné.  

**Explication:** La commande correcte pour attribuer un VLAN voix est `switchport voice vlan 150`.

---

### 54. Quel composant réduit le temps de traitement des paquets dans un commutateur ?
- **ASIC**  
- RAM de stockage  
- Processeurs doubles  

**Explication:** Les ASIC (Application-Specific Integrated Circuits) optimisent le traitement des paquets.

---

### 55. Associez les modes DTP à leurs fonctions :
- **Dynamic auto** : Attente passive.  
- **Nonegotiate** : Configuration manuelle obligatoire.  
- **Dynamic desirable** : Tentative active de trunking.  
- **Trunk** : Mode permanent.  

---

### 56. Quel type de port est requis pour une configuration « router-on-a-stick » ?
- **Port agrégé**  
- Port routé  
- Port d’accès  

**Explication:** Le routeur-on-a-stick nécessite un port trunk pour transporter les VLANs.

---

### 57. Quelle erreur empêche les PC du VLAN 45 de communiquer avec le VLAN 30 ?
- **Une adresse IP incorrecte sur la sous-interface Gig0/0.30.**  
- Il manque `no shutdown` sur Gig0/0.30.  
- Le mauvais VLAN est configuré sur Gig0/0.45.  

**Explication:** L’adresse IP de la sous-interface doit correspondre au sous-réseau du VLAN.

---

### 58. Quel est l’effet de la commande `exit` en mode interface ?
- **Retourne au mode de configuration globale.**  
- Enregistre la configuration.  
- Entre en mode utilisateur.  

**Explication:** La commande `exit` quitte le mode de configuration d’interface.

---

### 59. Quel VLAN sépare les utilisateurs en groupes ?
- **VLAN données**  
- VLAN natif  
- VLAN de gestion  

**Explication:** Les VLAN données sont utilisés pour segmenter logiquement les utilisateurs.

---

### 60. Après quelle étape le chargeur de démarrage est-il exécuté ?
- **Après l’exécution du POST.**  
- Après l’initialisation de la mémoire flash.  
- Après la localisation de l’IOS.  

**Explication:** Le POST s’exécute en premier, suivi du chargeur de démarrage.

---

### 61. Que se passe-t-il si `no switchport access vlan 30` est exécuté ?
- **Le port retourne au VLAN 1.**  
- Le port est désactivé.  
- Le VLAN 30 est supprimé.  

**Explication:** Le port revient au VLAN par défaut (VLAN 1) si son VLAN est supprimé.

---

### 62. Quel VLAN est utilisé pour SSH, Telnet, etc. ?
- **VLAN de gestion**  
- VLAN voix  
- VLAN trunk  

**Explication:** Le VLAN de gestion est dédié aux accès administratifs (SSH, SNMP, etc.).

---

### 63. Quel est l’effet de `ip address 172.18.33.88 255.255.255.0` sur un commutateur ?
- **Applique une adresse IPv4 à l’interface virtuelle.**  
- Configure une adresse IPv6.  
- Met à jour la table MAC.  

**Explication:** Cette commande configure une adresse IP sur l’interface virtuelle de gestion (SVI).

---

### 64. Quel VLAN prend en charge le trafic non marqué ?
- **VLAN natif**  
- VLAN de sécurité  
- VLAN trunk  

**Explication:** Le VLAN natif transporte les trames non étiquetées sur une liaison trunk.