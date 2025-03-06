1. Vérifier si les ports ne sont pas éteints avec la commande **show ip interface brief**
   ![[Pasted image 20250303214316.png]]
   Si oui les activer avec la commande **no shutdown**
2. Checker si les vlan existent avec **show vlan brief**
3. Vérifier si le port est en mode trunk **show interface fastEthernet 0/1 switchport**
4. Vérifier les trunk **show interface trunk**
   Corriger vlan native : interface gigabitEthernet0/1 
   Sx(config-if)# switchport trunk native vlan 10


5. Voir la config de la machine: mask, ip, passerel
6. Voir si les vlans sont correctements créé, attribué
7. Show ip route
   conf t
   ip routing