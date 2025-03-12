### Modules 4 à 7 du CCNA1 – Cursus de Présentation des réseaux v7.0 (ITN) Réponses Français

**1. Associez ces situations aux utilisations de supports réseau correspondantes.**

![ITN (Version 7.00) - Examen sur les concepts d'Ethernet](https://ccnareponses.com/wp-content/uploads/2021/12/2021-12-02_112021.jpg)

ITN (Version 7.00) – Examen sur les concepts d’Ethernet Q1

**Explique:** Câbles en cuivre : structure de câblage horizontal et ordinateurs dans les bureaux d’une entreprise  
Fibre optique : câblage du réseau fédérateur d’une entreprise et réseaux longue distance  
Sans fil : cafés et salles d’attente d’un hôpital

**2. Ouvrez le fichier d’activité Packet Tracer. Effectuez les tâches dans les instructions relatives et puis répondez à la question.  
Quel port Switch0 utilise-t-il pour envoyer des trames à l’hôte avec l’adresse IPv4 10.1.1.5?**

![ITN (Version 7.00) - Examen sur les concepts d'Ethernet 32](https://ccnareponses.com/wp-content/uploads/2021/12/2021-12-19_052544.jpg)

ITN (Version 7.00) – Examen sur les concepts d’Ethernet 32

- Fa0/1
- Fa0/5
- FA/9
- Fa0/11

**Explique:** L’exécution de la commande ipconfig /all à partir de l’invite de commande PC0 affiche l’adresse IPv4 et l’adresse MAC. Lorsque l’adresse IPv4 10.1.1.5 est pingée à partir de PC0, le commutateur stocke l’adresse MAC source (à partir de PC0) ainsi que le port auquel PC0 est connecté. Lorsque la réponse de destination est reçue, le commutateur prend l’adresse MAC de destination et compare les adresses MAC stockées dans la table d’adresses MAC. L’exécution de la commande show mac-address-table sur l’application PC0 Terminal affiche deux entrées d’adresses MAC dynamiques. L’adresse MAC et l’entrée de port qui n’appartiennent pas à PC0 doivent être l’adresse MAC et le port de destination avec l’adresse IPv4 10.1.1.5.

**3. Quelles sont deux caractéristiques d’un câble à fibre optique ? (Choisissez deux propositions.)**

- Il n’est pas affecté par les perturbations électromagnétiques ou radioélectriques.
- Il associe la technique de l’annulation des champs magnétiques, du blindage et des brins torsadés pour protéger les données.
- Il est plus cher qu’un câble à paires torsadées non blindées.
- Chaque paire de fils est enveloppée dans une feuille métallique.
- Il contient généralement 4 paires de brins en fibre optique.

**Explique:** Les câbles en fibre optique acceptent davantage de bande passante que ceux à paires torsadées non blindées sur des distances plus importantes. La fibre résiste aux interférences électromagnétiques et radioélectriques, mais coûte plus cher, nécessite certaines compétences pour son installation et exige davantage de mesures de sécurité.

**4. Avec l’utilisation de fils de cuivre à paires torsadées non blindées dans un réseau, quelles sont les causes de la diaphonie dans les paires de câbles?**

- le champ magnétique autour des paires adjacentes de fil
- le reflet de l’onde électrique de retour de l’extrémité éloignée du câble
- l’utilisation de fils tressés pour protéger les paires de fils adjacentes
- la collision causée par deux nœuds essayant d’utiliser le média simultanément

**Explique:** La diaphonie est un type de bruit, ou d’interférence qui se produit lorsque la transmission du signal sur un fil interfère avec un autre fil. Lorsque le courant circule à travers un fil, un champ magnétique est produit. Le champ magnétique produit interfacera le signal transporté dans le fil adjacent.

**5. Outre la longueur de câble, quels sont les deux autres facteurs qui peuvent parasiter la communication sur un câble à paires torsadées non blindées ? (Choisissez deux propositions.)**

- Bande passante
- Taille du réseau
- Interférence électromagnétique
- Technique de modulation de signaux
- Interférence

**Explique:** Les supports de cuivre sont largement utilisés dans les communications réseau. Cependant, les supports en cuivre sont limités par la distance et les interférences du signal. Les données sont transmises sur les câbles en cuivre sous forme d’impulsions électriques. Les impulsions électriques sont également susceptibles de générer des interférences de deux sources :  
Interférences électromagnétiques (EMI) ou interférences radioélectriques (RFI) : les signaux électromagnétiques et radioélectriques peuvent déformer et détériorer les signaux de données transportés par les supports en cuivre.  
Diaphonie : la diaphonie est une perturbation causée par les champs électriques ou magnétiques d’un signal d’un fil qui interfèrent avec le signal du fil voisin.

**6. Reportez-vous au graphique. Quel type de câblage est-il affiché?**

![ITN (Version 7.00) - Examen sur les concepts d'Ethernet 8](https://ccnareponses.com/wp-content/uploads/2021/12/2021-12-02_114623.jpg)

ITN (Version 7.00) – Examen sur les concepts d’Ethernet 8

- STP
- Câblage coaxial
- UTP
- Fibre optique

**Explique:** Le câblage réseau comprend différents types de câbles:  
Le câblage UTP se compose de quatre paires de fils de cuivre un code couleur qui ont été torsadés, puis placés dans une gaine plastique souple.  
Le câble STP utilise quatre paires de fils, chacun enveloppé dans un blindage en feuille, qui sont ensuite enveloppés dans une tresse ou feuille métallique globale.  
Une couche d’isolant plastique souple entoure un conducteur en cuivre.  
Le câble de fibre est un brin de verre flexible, extrêmement mince et transparent entouré d’une isolation plastique.

**7. Quels appareils perturbent généralement les réseaux sans fil ? (Choisissez deux réponses.)**

- Téléphones sans fil
- Ampoules incandescentes
- Home cinema
- Disques durs externes
- Micro-ondes
- Lecteurs Blu-ray

**Explique:** Les perturbations radioélectriques sont des interférences causées par les émetteurs radio et les autres appareils émettant à la même fréquence.

**8. Quelles sont les deux déclarations qui décrivent les services fournis par la couche de liaison de données? (Choisissez deux réponses.)**

- Il regroupe plusieurs PDU de couche 3 dans un format de trame compatible avec l’interface réseau.
- Il fournit une livraison fiable grâce à l’établissement de liens et au contrôle de flux.
- Il définit le schéma d’adressage de livraison de bout en bout.
- Il gère l’accès des trames au support réseau.
- Il maintient le chemin entre les périphériques source et destination pendant la transmission des données.
- Il garantit que les données d’application seront transmises en fonction de l’ordre de priorité.

**Explique:** La couche liaison de données du modèle OSI est divisée en deux sous-couches: la sous-couche MAC et la sous-couche LLC. LLC forme une trame à partir de la PDU de la couche réseau dans un format qui conforme aux exigences de l’interface réseau et du support. Une PDU de couche réseau peut être pour IPv4 ou IPv6. La sous-couche MAC définit les processus d’accès aux médias effectués par le matériel. Il gère l’accès des trames au support réseau selon les exigences de signalisation physique (câble cuivre, fibre optique, sans fil, etc.)

**9. Que contient le code de fin de la trame liaison de données ?**

- adresse logique
- adresse physique
- Détection des erreurs
- Données

**Explique:** Le code de fin d’une trame liaison de données contient des informations de détection d’erreur relatives à la trame incluse dans le champ FCS. L’en-tête contient les informations de contrôle, telles que l’adressage, tandis que la zone qui est indiquée par le mot « données » comprend les données, l’unité de données de protocole de la couche transport et l’en-tête IP.

**10. Une équipe réseau compare les topologies physiques de réseau étendu pour connecter des sites distants au siège de l’entreprise. Quelle topologie offre une haute disponibilité et connecte certains, mais pas tous les sites distants ?**

- Point à point
- maillage partiel
- Hub and Spoke
- À maillage

**Explique:** Les topologies à maillage partiel offrent une haute disponibilité en interconnectant plusieurs sites distants, mais ne nécessitent pas de connexion entre tous les sites distants. Une topologie maillée nécessite des liaisons point à point entre chaque système. Une topologie point à point consiste en la connexion de tous les périphériques entre eux. Le modèle Hub and Spoke utilise un périphérique central dans une topologie en étoile qui se connecte à d’autres périphériques via des liaisons point à point.

**11. Quel type de communication support ne nécessite pas d’arbitrage des supports dans la couche de liaison de données?**

- déterministe
- semi-duplex
- Accès contrôlé
- duplex intégral

**Explique:** La communication en semi-duplex se produit lorsque les deux périphériques peuvent simultanément transmettre et recevoir sur le support mais pas de façon simultanée. La communication en mode duplex intégral se produit lorsque les deux périphériques peuvent simultanément transmettre et recevoir des données sur les supports. La communication semi-duplex est utilisé avec gestion des conflits, tandis que l’accès contrôlé (déterministe) est appliqué dans les technologies où les appareils prennent tour à tour de rôle pour accéder au support.

**12. Quelle proposition décrit une topologie en étoile étendue ?**

- Tous les périphériques finaux et intermédiaires sont connectés les uns aux autres, en chaîne.
- Les périphériques finaux se connectent à un périphérique intermédiaire qui à son tour se connecte à des périphériques intermédiaires centraux.
- Chaque périphérique terminal est connecté à son voisin respectif via un périphérique intermédiaire.
- Les périphériques finaux sont connectés par un bus, et chaque bus se connecte à un périphérique intermédiaire central.

**Explique:** Dans une topologie en étoile étendue, les périphériques intermédiaires centraux sont interconnectés avec d’autres topologies en étoile.

**13. Quelle proposition constitue une caractéristique de la sous-couche de contrôle de liaison logique ?**

- Elle offre la délimitation des données en fonction des exigences de signalisation physique du support.
- Elle définit les processus logiciels qui fournissent des services à la couche physique.
- Elle fournit l’adressage logique requis qui identifie le périphérique.
- Elle place des informations dans la trame pour que plusieurs protocoles de couche 3 puissent utiliser la même interface réseau et les mêmes supports.

**Explique:** La sous-couche de contrôle de liaison logique (LLC) définit les processus logiciels qui fournissent des services aux protocoles de couche réseau. La sous-couche LLC place les informations dans la trame et indique quel protocole de couche réseau est utilisé pour la trame. Ces informations permettent à plusieurs protocoles de couche 3 (par exemple, IPv4 et IPv6) d’utiliser la même interface réseau et les mêmes supports.

**14. Quelles sont les trois façons dont le contrôle d’accès aux supports est utilisé dans la mise en réseau? (Choisissez trois réponses.)**

- Le contrôle d’accès aux supports permet de placer les trames de données sur le support.
- 802.11 utilise la CSMA/CD.
- Ethernet utilise CSMA/CD.
- Accès avec gestion des conflits est également connu sous le nom de déterministe.
- Les protocoles opérant au niveau de la couche liaison de données définissent les règles d’accès aux différents supports.
- Les réseaux à accès contrôlé ont des performances réduites en raison des collisions de données.

**Explique:** Les réseaux Ethernet câblés utilisent CSMA/CD pour le contrôle d’accès aux support. Les réseaux sans fil IEEE 802.11 utilisent CSMA/CA, une méthode similaire. Le contrôle d’accès aux supports définit la façon dont les trames de données sont placées sur le support. La méthode d’accès contrôlé est déterministe et non un accès avec gestion des conflits aux réseaux. Étant donné que chaque appareil a son propre temps d’utilisation, les réseaux à accès contrôlé tels que l’ancien Token Ring n’ont pas de collisions.

**15. Quel type de règle de communication décrit le mieux CSMA/CD ?**

- Codage des messages
- Encapsulation des messages
- Méthode d’accès
- Contrôle de flux

**Explique:** La méthode d’accès CSMA/CD est utilisée avec Ethernet. La règle de la méthode d’accès définit comment un périphérique réseau peut émettre un signal sur la porteuse. La méthode CSMA/CD applique ces règles de communication sur un réseau Ethernet et la méthode CSMS/CA sur un LAN sans fil 802.11.

**16. Quelles sont les trois parties de base communes à tous les types de trames pris en charge par la couche de liaison de données? (Choisissez trois propositions.)**

- Valeur CRC
- données
- MTU size (Taille de MTU)
- en-tête
- queue de bande
- Champ Type

**Explique:** Le protocole de liaison de données est responsable des communications NIC à NIC au sein du même réseau. Même si de nombreux protocoles de couche liaison de données différents décrivent les trames de couche liaison de données, chaque type de trame comprend trois éléments de base:  
En-tête  
Données  
Queue de bande

**17. Qu’est-ce que la fonction auto-MDIX sur un commutateur ?**

- La configuration automatique d’une communication bidirectionnelle simultanée via la fibre optique ou un câble Ethernet cuivre unique
- La configuration automatique d’une interface pour une connexion par câble Ethernet droit ou de croisement
- La configuration automatique d’une interface pour un fonctionnement à 10/100/1 000 Mbit/s
- La possibilité d’activer/de désactiver une interface de commutateur en conséquence si une connexion active est détectée

**Explique:** La fonction auto-MDIX permet à un commutateur d’utiliser un câble croisé ou un câble droit Ethernet pour se connecter à un autre périphérique, quel qu’il soit.

**18. Examinez l’illustration. Quelle est l’adresse MAC de destination de la trame Ethernet quand elle quitte le serveur Web si la destination finale est le PC1 ?**

![Modules 4 - 7: Examen sur les concepts d'Ethernet Réponses](https://ccnareponses.com/wp-content/uploads/2021/12/2021-12-19_051744.jpg)

Modules 4 – 7: Examen sur les concepts d’Ethernet Réponses 18

- 00-60-2F-3A-07-AA
- 00-60-2F-3A-07-DD
- 00-60-2F-3A-07-CC
- 00-60-2F-3A-07-BB

**Explique:** L’adresse MAC de destination est utilisée pour la livraison locale des trames Ethernet. L’adresse MAC (couche 2) change à chaque segment de réseau sur le chemin. Lorsque la trame quitte le serveur Web, elle est transférée à l’aide de l’adresse MAC de la passerelle par défaut.

**19. Quelle méthode de transmission de trames reçoit la trame dans sa totalité et vérifie s’il existe des erreurs à l’aide d’un contrôle CRC avant de transmettre la trame ?**

- Commutation Fragment-Free
- Commutation Cut-Through
- Commutation Store-and-Forward
- Commutation Fast-Forward

**Explique:** Les méthodes Fast-forward et Fragment-free sont des variantes de la commutation Cut-through, qui commence à transmettre la trame avant qu’elle ne soit entièrement reçue.

**20. Quel est l’objectif du champ FCS dans une trame ?**

- Vérifier l’adresse logique du nœud expéditeur
- Déterminer si des erreurs se sont produites lors de la transmission et de la réception
- Calculer l’en-tête CRC pour le champ de données
- Obtenir l’adresse MAC du nœud expéditeur

**Explique:** Le champ FCS d’une trame est utilisé pour détecter les erreurs dans la transmission et la réception d’une trame. Cette opération consiste à comparer la valeur CRC de la trame à la valeur CRC de trame calculée. Si les deux valeurs ne correspondent pas, la trame est rejetée.

**21. Quel est l’avantage de la méthode de commutation après stockage et retransmission par rapport à la méthode de commutation cut-through ?**

- Vérification des erreurs de trame
- Transmission rapide des trames
- Détection des collisions
- Transmission de trames grâce aux informations IPv4 des couches 3 et 4

**Explique:** Un commutateur utilisant la méthode de commutation après stockage et retransmission effectue une vérification des erreurs sur une trame entrante en comparant la valeur de séquence de contrôle de trame aux calculs correspondants après réception de l’ensemble de la trame. En comparaison, un commutateur utilisant la méthode de commutation cut-through prend des décisions de transmission rapides et commence le processus de transmission sans attendre que la trame complète ait été reçue. Par conséquent, un commutateur utilisant la commutation cut-through peut envoyer des trames non valides au réseau. Les performances du mode différé sont plus lentes par rapport à celles de la commutation cut-through. La détection de collision est contrôlée par le périphérique d’envoi. La commutation après stockage et retransmission n’utilise pas les informations IPv4 des couches 3 et 4 dans sa prise de décisions de transmission.

**22. Lorsque la méthode de commutation store-and-forward est utilisée, quelle partie de la trame Ethernet permet de détecter les erreurs ?**

- L’adresse MAC source dans l’en-tête
- L’adresse MAC de destination dans l’en-tête
- La partie CRC dans la queue de bande
- Le type de protocole dans l’en-tête

**Explique:** La partie CRC de la queue de bande permet de déterminer si la trame a été modifiée durant sa transmission. Si l’intégrité de la trame est vérifiée, elle est transmise. Si elle ne peut pas l’être, la trame est abandonnée.

**23. Quelle méthode de commutation utilise la valeur CRC dans une trame ?**

- Fast-Forward
- Fragment-Free
- Cut-Through
- Store-and-Forward

**Explique:** Avec la méthode de commutation Store-and-forward, le commutateur reçoit la trame en totalité avant de la transmettre à la destination. La partie CRC de la queue de bande permet de déterminer si la trame a été modifiée durant sa transmission. A l’inverse, la méthode Cut-through transmet la trame à condition que l’adresse de couche 2 de la destination ait été lue. Les deux types de méthodes de commutation Cut-through sont Fast-forward et Fragment-free.

**24. Quelles sont les deux actions effectuées par un commutateur Cisco ? (Choisissez deux propositions.)**

- Utilisation de la table d’adressage MAC pour transférer des trames via l’adresse MAC de destination
- Utilisation des adresses MAC sources des trames pour construire et conserver une table d’adressage MAC
- Construction d’une table de routage basée sur la première adresse IP de l’en-tête de trame
- Examen de l’adresse MAC de destination pour ajouter de nouvelles entrées à la table d’adresses MAC
- Transfert des trames dotées d’adresses IP de destination inconnues sur la passerelle par défaut

**Explique:** Opérations importantes qu’un commutateur effectue :  
Lorsqu’une trame entre sur le réseau, le commutateur examine l’adresse source de la couche 2 pour créer et gérer la table des adresses MAC de la couche 2.  
Il examine l’adresse de destination de la couche 2 pour savoir comment transmettre la trame. Si l’adresse de destination figure dans la table d’adresses MAC, la trame est transmise à un port particulier. Si l’adresse est inconnue, elle est transmise à tous les ports dont les terminaux sont connectés à ce réseau.

**25. Quelles propositions décrivent les caractéristiques et les fonctions de la sous-couche de contrôle de liaison logique dans les normes Ethernet ? (Choisissez deux propositions.)**

- La sous-couche LLC ajoute un en-tête et une queue de bande aux données.
- La sous-couche LLC est encadrée par la norme IEEE 802.3.
- La sous-couche de contrôle de liaison logique est responsable du positionnement et de la récupération des trames sur les supports.
- La couche liaison de données utilise le contrôle de liaison logique pour communiquer avec les couches supérieures de la suite de protocoles.
- Le contrôle de liaison logique est implémenté dans le logiciel.

**Explique:** La sous-couche LLC est implémentée au niveau logiciel et permet à la couche liaison de données de communiquer avec les couches supérieures de la suite de protocoles. La sous-couche LLC est encadrée par la norme IEEE 802.2. IEEE 802.3 est un ensemble de normes qui définissent les différents types de connexion Ethernet. La sous-couche MAC est responsable du positionnement et de la récupération des trames sur les supports. La sous-couche MAC a également comme fonction d’ajouter un en-tête et une queue de bande à l’unité de données de protocole.

**26. Quel avantage présente l’utilisation de la méthode de commutation à la volée (« cut-through ») par rapport à la méthode de stockage et retransmission ?**

- Elle apporte la flexibilité nécessaire pour prendre en charge toutes les combinaisons de débits Ethernet.
- Elle présente une latence plus faible, appropriée pour les applications de calcul haute performance.
- Elle prend rapidement les décisions relatives à la transmission, en se basant sur l’adresse MAC source de la trame.
- Elle a une incidence positive sur la bande passante, en rejetant la plupart des trames non valides.

**Explique:** La commutation « cut-through » assure une commutation de latence moindre pour les applications HPC (« high-performance computing »). La commutation « cut-through » autorise davantage de trames incorrectes à traverser le réseau que la commutation par stockage et retransmission (« store and forward »). La méthode de commutation « cut-through » permet de prendre des décisions relatives à la transmission en cas de recherche de l’adresse MAC de destination de la trame.

**27. Qu’est-ce qu’une adresse MAC de multidiffusion ?**

- FF-FF-FF-FF-FF-FF
- 00-26-0F-4B-00-3E
- 01-00-5E-00-00-03
- 5C-26-0A-4B-19-3E

**Explique:** Les adresses MAC multidiffusion commencent par la valeur spécifique 01-00-5E.

**28. Examinez l’illustration. Quel est le problème avec le raccordement affiché ?**

![ITN (Version 7.00) - Examen sur les concepts d'Ethernet 34](https://ccnareponses.com/wp-content/uploads/2021/12/2021-12-02_114901.jpg)

ITN (Version 7.00) – Examen sur les concepts d’Ethernet 34

- La longueur détorsadée de chaque fil est trop longue.
- Le mauvais type de connecteur est utilisé.
- Les câbles sont trop épais pour le connecteur utilisé.
- Le treillis de cuivre n’aurait pas dû être retiré.

**Explique:** Lorsqu’un connecteur RJ-45 est relié à un câble, il est important de s’assurer que les fils détorsadés ne sont pas trop longs, et que la gaine en plastique souple entourant les fils est sertie et que les fils ne sont pas dénudés. Aucun des fils de couleur ne doit être visible à la base de la prise.

**29. Examinez l’illustration. Le PC est connecté au port de console du commutateur. Toutes les autres connexions sont établies via des liens FastEthernet. Quels types de câbles à paires torsadées non blindées peuvent être utilisés pour connecter les périphériques ?**

![ITN (Version 7.00) - Examen sur les concepts d'Ethernet](https://ccnareponses.com/wp-content/uploads/2021/12/2021-12-02_114941.jpg)

ITN (Version 7.00) – Examen sur les concepts d’Ethernet

- 1 – renversement, 2 – croisement, 3 – droit
- 1 – renversement, 2 – droit, 3 – croisement
- 1 – croisement, 2 – droit, 3 – renversement
- 1 – croisement, 2 – renversement, 3 – direct

**Explique:** Un câble droit est généralement utilisé pour connecter un hôte à un commutateur et un commutateur à un routeur. Un câble croisé permet de connecter des périphériques similaires comme un commutateur à un autre commutateur, un hôte à un autre hôte, ou un routeur à un autre routeur. Si un commutateur est équipé d’une interface croisée dépendante du support (MDIX), un câble croisé peut être utilisé pour connecter le commutateur au routeur. Toutefois, cette option n’est pas disponible. Un câble de renversement permet d’établir une connexion avec un routeur ou un port de console de commutateur.

**30. Que signifie le terme «atténuation» dans la communication de données?**

- temps pour qu’un signal atteigne sa destination
- fuite de signaux d’une paire de câbles à une autre
- renforcement d’un signal par un dispositif de mise en réseau
- perte de puissance du signal à mesure que la distance augmente

**Explique:** Les données sont transmises sur les câbles en cuivre sous forme d’impulsions électriques. Un détecteur dans l’interface réseau d’un périphérique de destination doit recevoir un signal pouvant être décodé correctement pour correspondre au signal envoyé. Toutefois, plus le signal voyage longtemps, plus il se détériore. C’est ce qu’on appelle l’atténuation du signal.

**31. Qu’est-ce qui rend la fibre préférable au câblage en cuivre pour l’interconnexion des immeubles ? (Choisissez trois réponses.)**

- réduction des coûts d’installation
- plus grand potentiel de bande passante
- sensibilité limitée aux IEM/RFI
- distances plus grandes par câble
- se termine facilement
- connexions durables

**Explique:** Les câbles à fibre optique transmettent les données sur de plus longues distances et avec une bande passante plus large que n’importe quel autre support réseau. Contrairement aux fils de cuivre, les câbles à fibre optique peuvent transmettre des signaux avec moins d’atténuation et sont entièrement protégés des perturbations électromagnétiques et radioélectriques.

**32. Quel terme de couche physique OSI décrit la mesure des données utilisables transférées sur une période de temps donnée ?**

- câble en cuivre
- débit applicatif
- câble à fibre optique
- Transport aérien

**33. Quelles sont les deux fonctions exécutées sur la sous-couche MAC de la couche de liaison de données OSI? (Choisissez deux réponses.)**

- Ajoute des informations de contrôle de couche 2 aux données du protocole réseau.
- Contrôle la carte réseau responsable de l’envoi et de la réception des données sur le support physique.
- Place les informations dans la trame qui indique le protocole de couche réseau utilisé pour la trame.
- Communique entre le logiciel de mise en réseau sur les couches supérieures et le matériel du périphérique sur les couches inférieures.
- Fournit un mécanisme permettant à plusieurs périphériques de communiquer sur un support partagé.

**Case 2:**

- Fournit la synchronisation entre les nœuds source et cible.
- Communique entre le logiciel de mise en réseau sur les couches supérieures et le matériel du périphérique sur les couches inférieures.
- Ajoute des informations de contrôle de couche 2 aux données du protocole réseau.
- Intègre plusieurs technologies physiques.
- Permet à IPv4 et IPv6 d’utiliser la même interface réseau et le même support.

**Case 3:**

- Communique entre le logiciel de mise en réseau sur les couches supérieures et le matériel du périphérique sur les couches inférieures.
- Intègre plusieurs technologies physiques.
- Ajoute des informations de contrôle de couche 2 aux données du protocole réseau.
- Place les informations dans la trame qui indique le protocole de couche réseau utilisé pour la trame.
- Contrôle la carte réseau responsable de l’envoi et de la réception des données sur le support physique.

**Case 4:**

- Ajoute des informations de contrôle de couche 2 aux données du protocole réseau.
- Place les informations dans la trame qui indique le protocole de couche réseau utilisé pour la trame.
- Met en place une queue de bande pour détecter les erreurs de transmission.
- Fournit la synchronisation entre les nœuds source et cible.
- Permet à IPv4 et IPv6 d’utiliser la même interface réseau et le même support.

**34. Quelle action se produira si un commutateur reçoit une trame et possède l’adresse MAC source dans la table MAC?**

- Le commutateur actualise la minuterie sur cette entrée.
- Le commutateur partage l’entrée de la table d’adresses MAC avec tous les commutateurs connectés.
- Le commutateur n’avance pas la trame.
- Le commutateur l’ajoute à sa table d’adresses MAC associée au numéro de port.

**35. Un administrateur réseau mesure le transfert de bits sur le réseau fédérateur d’une entreprise pour une application financière stratégique. Il remarque que le débit du réseau est inférieur à la bande passante attendue. Quels facteurs peuvent avoir une influence sur les différences de débit ? (Choisissez trois propositions.)**

- La quantité de trafic acheminée sur le réseau actuellement
- La complexité de la méthode d’encapsulation appliquée aux données
- Le type de trafic acheminé sur le réseau actuellement
- La latence créée par le nombre de périphériques réseau que les données traversent
- La bande passante de la connexion du réseau étendu à Internet
- La fiabilité de l’infrastructure Gigabit Ethernet du réseau fédérateur

**Explique:** Le débit ne correspond généralement pas à la bande passante indiquée pour les liaisons physiques, en raison de plusieurs facteurs. Ces facteurs incluent la quantité de trafic, le type de trafic et la latence créée par les périphériques réseau que les données doivent traverser.

**36. Quel est le rôle principal de la couche physique dans la transmission des données sur le réseau?**

- Contrôle d’accès au support
- créer les signaux qui représentent les bits de chaque image sur le support
- Détermine le meilleur chemin à travers le réseau
- fournir un adressage physique aux périphériques

**Explique:** La couche physique de l’OSI fournit les moyens de transporter les bits qui composent une trame sur le support réseau. Cette couche accepte une trame complète de la couche liaison de données et la code sous la forme d’une série de signaux transmis au support local.

**37. À quoi sert la valeur CRC qui figure dans le champ FCS d’une trame ?**

- À calculer l’en-tête checksum pour le champ de données dans la trame
- À vérifier l’adresse physique dans la trame
- À vérifier l’adresse logique dans la trame
- À vérifier l’intégrité de la trame reçue

**Explique:** La valeur CRC du champ FCS de la trame reçue est comparée à la valeur CRC calculée de cette trame afin de vérifier son intégrité. Si les deux valeurs ne correspondent pas, la trame est rejetée.

**38. Quelle proposition décrit une caractéristique des champs d’en-tête de trame de la couche liaison de données ?**

- Ils incluent tous les champs de contrôle de flux et de connexion logique.
- Ils comprennent des informations sur les applications des utilisateur.
- Ils varient selon les protocoles.
- Les champs d’en-tête de trame Ethernet contiennent des adresses source et de destination de couche 3.

**Explique:** Tous les protocoles de couche liaison de données encapsulent l’unité de données de protocole de couche 3 dans le champ de données de la trame. Cependant, la structure de la trame et les champs contenus dans l’en-tête varient en fonction du protocole utilisé. Les différents protocoles de couche liaison de données peuvent utiliser des champs différents, comme la priorité/qualité de service, le contrôle de connexion logique, le contrôle de liaison physique, le contrôle de flux, ainsi que le contrôle d’encombrement.

**39. Quels sont les deux champs ou fonctionnalités Ethernet examine-t-il pour déterminer si une trame reçue est transmise à la couche de liaison de données ou ignorée par la carte réseau? (Choisissez deux réponses.)**

- auto-MDIX
- Adresse MAC d’origine
- taille minimale de trame
- Séquence de contrôle de trame
- CEF

**Explique:** Une trame Ethernet n’est pas traitée et est rejetée si elle est inférieure au minimum (64 octets) ou si la valeur de la séquence de contrôle de trame (FCS) calculée ne correspond pas à la valeur FCS reçue. Auto-MDIX (crossover automatique d’interface intermédiaire) est la technologie de couche 1 qui détecte les types de câbles directs ou croisés. L’adresse MAC source n’est pas utilisée pour déterminer comment la trame est reçue. CEF (Cisco Express Forwarding) est une technologie utilisée pour accélérer la commutation de couche 3.

**40. Lors du processus d’encapsulation, que se passe-t-il au niveau de la couche liaison de données pour un ordinateur connecté à une interface Ethernet ?**

- L’adresse logique est ajoutée.
- Une adresse IP est ajoutée.
- L’adresse physique est ajoutée.
- Le numéro de port du processus est ajouté.

**Explique:** La trame Ethernet contient les adresses physiques source et de destination. La queue de bande contient une valeur CRC dans le champ Frame Check Sequence qui permet au périphérique destinataire de déterminer si la trame a été modifiée (comporte des erreurs) durant la transmission.

**41. Un commutateur de couche 2 est utilisé pour faire passer les trames entrantes d’un port 1000BASE-T à un port connecté à un réseau 100Base-T. Quelle méthode de mise en mémoire tampon est la plus appropriée pour cette tâche ?**

- Mise en mémoire tampon partagée
- Mise en mémoire tampon de configuration fixe
- Mise en mémoire cache de niveau 1
- Mise en mémoire tampon axée sur les ports

**Explique:** Avec la mise en mémoire tampon partagée, le nombre de trames stockées dans la mémoire tampon est limité par la taille totale de cette dernière, mais ne se limite pas à un seul tampon du port, ce qui permet de transmettre de plus grandes trames en en supprimant un minimum. Cela est important pour la commutation asymétrique, qui s’applique à ce scénario, car les trames sont échangées entre des ports de différents débits. Dans le cas de la mise en mémoire tampon axée sur les ports, les trames sont stockées dans des files d’attente liées à des ports entrants et sortants spécifiques. Une seule trame peut retarder la transmission de toutes les trames en mémoire si un port de destination est saturé. Le cache de niveau 1 est la mémoire utilisée dans un processeur. La configuration fixe fait référence à la configuration des ports du commutateur.

**42. Quels sont deux exemples de la méthode cut-through de commutation ? (Choisissez deux propositions.)**

- Commutation Fast-Forward
- Commutation QOS
- Commutation Fragment-Free
- Commutation Store-and-Forward
- Commutation CRC

**Explique:** La commutation store-and forward accepte la trame dans sa totalité et vérifie s’il existe des erreurs à l’aide d’un contrôle CRC avant de transmettre la trame. La commutation store-and-forward est souvent nécessaire pour l’analyse de la QoS. Les méthodes de commutation fast-foward et fragment-free sont des variantes de la commutation cut-through grâce à laquelle le commutateur commence à transmettre la trame même si elle n’est reçue que partiellement.

**43. Quelle méthode de commutation offre le niveau de latence le plus faible ?**

- Store-and-Forward
- Cut-Through
- Fragment-Free
- Fast-Forward

**Explique:** La commutation Fast-forward commence à transmettre une trame après avoir lu l’adresse MAC de destination et offre ainsi le plus faible niveau de latence. La commutation fragment-free lit les 64 premiers octets de la trame avant de la transmettre. La commutation store-and-forward offre le niveau de latence le plus élevé, car elle lit la totalité de la trame avant de commencer à la transmettre. Les méthodes fragment-free et fast-forward sont des types de commutation cut-through.

**44. Un administrateur réseau connecte deux commutateurs modernes à l’aide d’un câble droit. Les commutateurs sont nouveaux et n’ont jamais été configurés. Quelles propositions relatives au résultat final de la connexion sont exactes ? (Choisissez trois réponses.)**

- La liaison entre les commutateurs peut disposer du débit le plus rapide pris en charge par les deux commutateurs.
- La fonction bidirectionnelle doit être configurée manuellement car elle ne peut pas être négociée.
- La liaison entre les commutateurs fonctionne en mode bidirectionnel simultané.
- Si les deux commutateurs prennent en charge différents débits, ils fonctionneront à leur débit le plus rapide.
- La connexion n’est pas possible sauf si l’administrateur modifie le câble pour un câble de croisement.
- La fonction auto-MDIX configure les interfaces, ce qui élimine la nécessité d’utiliser un câble de croisement.

**Explique:** Les commutateurs modernes peuvent fonctionner en mode bidirectionnel simultané si les deux commutateurs sont compatibles avec cette fonction. Ils tenteront de fonctionner à la vitesse la plus rapide possible et la fonction auto-MDIX sera activée par défaut. Les câbles n’ont pas besoin d’être modifiés.

**45. Quel terme de couche physique OSI décrit le processus par lequel une onde modifie une autre onde?**

- Modulation
- EIA/TIA
- Transport aérien
- IEEE

**46. Quelle action se produira si un commutateur reçoit une trame avec l’adresse MAC de destination FF:FF:FF:FF:FF:FF?**

- Le commutateur n’avance pas la trame.
- Le commutateur transmet tous les ports à l’exception du port d’entrée.
- Le commutateur actualise la minuterie sur cette entrée.
- Le commutateur envoie la trame à un routeur connecté car l’adresse MAC de destination n’est pas locale.

**47. Quel terme de couche physique OSI décrit la capacité à laquelle un support peut transporter des données?**

- IEEE
- EIA/TIA
- bande passante
- Transport aérien

**48. Quelle action se produira si un hôte reçoit une trame avec une adresse MAC de destination FF:FF:FF:FF:FF:FF?**

- L’hôte envoie la trame au commutateur pour mettre à jour la table d’adresses MAC.
- L’hôte transmet la trame au routeur.
- L’hôte traitera la trame.
- L’hôte transmet la trame au routeur.

**49. Quelle déclaration est vraie sur la méthode d’accès CSMA/CD utilisée dans Ethernet?**

- Un signal de brouillage provoque uniquement l’exécution d’un algorithme de backoff par les périphériques qui ont provoqué la collision.
- Lorsqu’un dispositif entend un signal porteur et transmet, une collision ne peut pas se produire.
- Tous les périphériques réseau doivent écouter avant de transmettre.
- Les dispositifs impliqués dans une collision obtiennent la priorité à transmettre après la période de retour en arrière.

**Explique:** Le réseau local Ethernet topologie de bus hérité utilise CSMA/CD comme protocole de contrôle d’accès aux médias réseau. Il fonctionne en détectant une collision dans le milieu et en reculant (après avoir transmis un signal de blocage) si nécessaire. Lorsqu’un hôte souhaite transmettre une trame, il écoute sur le médium pour vérifier si le médium est occupé. Après avoir senti que personne d’autre ne transmet, l’hôte commence à transmettre la trame, il surveille également le niveau actuel pour détecter une collision. S’il détecte une collision, il transmet un signal de blocage spécial afin que tous les autres hôtes puissent savoir qu’il y a eu collision. L’autre hôte recevra ce signal de blocage et cessera de transmettre. Après cela, les deux hôtes entrent dans une phase de backoff exponentielle et réessayez la transmission.

**50. Reportez-vous au graphique. Quel type de câblage est-il affiché?**  
![](https://ccnareponses.com/wp-content/uploads/2021/12/2021-12-28_081812.png)

- STP
- UTP
- Câblage coaxial
- Fibre optique

**Explique:** Le câblage réseau comprend différents types de câbles:  
Le câblage UTP se compose de quatre paires de fils de cuivre un code couleur qui ont été torsadés, puis placés dans une gaine plastique souple.  
Le câble STP utilise quatre paires de fils, chacun enveloppé dans un blindage en feuille, qui sont ensuite enveloppés dans une tresse ou feuille métallique globale.  
Le câble coaxial utilise un conducteur en cuivre et une couche d’isolation en plastique flexible entoure le conducteur en cuivre.  
Le câble de fibre est un brin de verre flexible, extrêmement mince et transparent entouré d’une isolation plastique.

**51. Quels sont les trois éléments contenus dans un en-tête Ethernet et une queue de bande? (Choisissez trois propositions.)**

- informations de vérification des erreurs
- L’adresse IP source
- L’adresse MAC d’origine
- L’adresse IP de destination
- Adresse MAC de destination

**Explique:** Les en-têtes de couche 2 contiennent les éléments suivants:  
Les indicateurs « Frame start and stop » sont utilisés pour identifier les limites de début et de fin de la trame.  
Adressage – pour les réseaux Ethernet, cette partie de l’en-tête contient les adresses MAC source et destination  
Tapez le champ pour indiquer quel protocole de couche 3 est utilisé  
Détection d’erreur pour déterminer si la trame est arrivé sans erreur

**52. Quelle est la fonction Auto-MDIX ?**

- Il permet à un appareil de configurer automatiquement une interface pour utiliser un câble direct ou un câble croisé.
- Il permet à un périphérique de configurer automatiquement les paramètres duplex d’un segment.
- Il permet à un appareil de configurer automatiquement la vitesse de son interface.
- Il permet à un commutateur de sélectionner dynamiquement la méthode de transfert.

**Explique:** La fonction auto-MDIX permet à un périphérique de configurer son port réseau selon le type de câble utilisé (droit ou croisé) et le type de périphérique connecté à ce port. Lorsqu’un port d’un commutateur est configuré avec Auto-MDIX, ce commutateur peut être connecté à un autre commutateur à l’aide d’un câble direct ou d’un câble croisé .

**53. Quel terme de couche physique OSI décrit le milieu physique qui utilise la propagation de la lumière?**

- débit applicatif
- latence
- câble à fibre optique
- débit

**54. Quelles sont les deux fonctions exécutées sur la sous-couche LLC de la couche de liaison de données OSI? (Choisissez deux réponses.)**

- Fournit la synchronisation entre les nœuds source et cible.
- Met en place une queue de bande pour détecter les erreurs de transmission.
- Intègre plusieurs technologies physiques.
- Ajoute des informations de contrôle de couche 2 aux données du protocole réseau.
- Permet à IPv4 et IPv6 d’utiliser la même interface réseau et le même support.

**55. Quelle action se produira si un commutateur reçoit une trame avec l’adresse MAC de destination 01:00:5 E: 00:00:D9?**

- Le commutateur partage l’entrée de la table d’adresses MAC avec tous les commutateurs connectés.
- Le commutateur n’avance pas la trame.
- Le commutateur transmet tous les ports à l’exception du port d’entrée.
- Le commutateur envoie la trame à un routeur connecté car l’adresse MAC de destination n’est pas locale.

**56. Quel terme de couche physique OSI décrit la mesure du transfert de bits sur un milieu sur une période donnée ?**

- débit applicatif
- débit
- bande passante
- latence

**57. Quelles sont les deux fonctions d’exécution sur la sous-couche LLC de la couche de liaison de données OSI? (Choisissez deux réponses.)**

- Place les informations dans la trame qui indique le protocole de couche réseau utilisé pour la trame.
- Met en œuvre un processus de délimitation des champs dans une trame de la couche 2.
- Intègre plusieurs technologies physiques.
- Permet à IPv4 et IPv6 d’utiliser la même interface réseau et le même support.
- Contrôle la carte réseau responsable de l’envoi et de la réception des données sur le support physique.

**Case 2:**

- Fournit la synchronisation entre les nœuds source et cible.
- Ajoute des informations de contrôle de couche 2 aux données du protocole réseau.
- Met en place une queue de bande pour détecter les erreurs de transmission.
- Permet à IPv4 et IPv6 d’utiliser la même interface réseau et le même support.
- Fournir l’adressage pour la couche liaison de données

**58. Quelle action se produira si un hôte reçoit une trame avec une adresse MAC de destination qu’il ne reconnaît pas?**

- L’hôte transmet la trame au routeur.
- L’hôte transmet la trame à tous les autres hôtes.
- L’hôte envoie la trame au commutateur pour mettre à jour la table d’adresses MAC.
- Le commutateur ignore la trame.

**59. Quel terme de couche physique OSI décrit le milieu physique qui utilise des impulsions électriques?**

- débit applicatif
- Transport aérien
- câble à fibre optique
- câble en cuivre