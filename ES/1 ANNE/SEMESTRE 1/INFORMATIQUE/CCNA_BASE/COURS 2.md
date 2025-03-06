|        |                                                                                                                                                    |
| ------ | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Legacy | Héritage                                                                                                                                           |
| SLA    | Service Level Agreement (Garantie de la bange passante, débit etc…)                                                                                |
| NIC    | Network Interface Card                                                                                                                             |
| HBA    | Host Bus Adapter ( Un contrôleur hôte de bus est une carte d'extension qui permet de connecter un système hôte à un bus externe réseau de stockage |


Commandes Cisco

|   |   |
|---|---|
|enable|passer en mode priviligé|
|conf t|passer en mode Config|
|Shift + ctrl + G|aborte nslookup|

|   |   |
|---|---|
|show ? \| show []|Show? Pour afficher les possibilités des commandes et show […] pour affiches les informations|
|reload|Rebooter le système|
|do […]|Nous mets en mode enable pour une commande|
|exit|Descendre d'un niveau|
|copy running-config startup-config|sauvegarder la config|
|wr|sauvegarder la config|

Mettre un mot de passe ne place :  
en  
conf t  
line console 0  
password monpassword  
login  
end  
exit

service password-encryption -> crypter le mot de passe
banner motd #Acces interdit# -> Définir un message
enable secret monpassword -> Définir mdp pour le mode enable