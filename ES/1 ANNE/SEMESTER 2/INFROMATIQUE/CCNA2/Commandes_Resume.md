# Démarches

### **Configuration du Switch S1**

```

! Partie 1 : Configuration de base
enable
configure terminal
hostname S1
service password-encryption

! Partie 2 : Configuration du SVI (VLAN 99)
vlan 99
exit
interface vlan 99
 ip address 192.168.1.10 255.255.255.0
 ipv6 address 2001:DB8:ACAD::10/64
 ipv6 address FE80::1 link-local
 no shutdown
exit
ip default-gateway 192.168.1.1

! Assigner les ports utilisateur à VLAN 99
interface range FastEthernet 0/1-24
 switchport access vlan 99
exit

! Partie 3 : Configuration SSH
username admin secret cisco  ! Mot de passe chiffré avec SHA-256
enable secret class          ! Secret enable
ip domain-name cpne.ch
crypto key generate rsa general-keys modulus 1024
line vty 0 4
 login local
 transport input ssh
exit
service password-encryption  ! Chiffrement des mots de passe (méthode 7)
```
---

### **Configuration du Routeur R1**

```
! Partie 4 : Configuration de base
enable
configure terminal
hostname R1
ip domain-name cpne.ch
no ip domain-lookup
security passwords min-length 12
service password-encryption

! Utilisateur SSH
username SSHadmin secret 55HadminIn2024

! Mots de passe EXEC et accès
enable secret $ciscoIPRIV*
line console 0
 password $ciscoIICON*
 login
 exec-timeout 4 0
exit
line vty 0 4
 password $ciscoIIVTY*
 login local
 transport input ssh
 exec-timeout 4 0
exit

! Bannière MOTD
banner motd ^Securized^

! Activation IPv6
ipv6 unicast-routing

! Configuration des interfaces
interface GigabitEthernet0/0
 description Liaison vers S1
 ip address 192.168.1.1 255.255.255.0
 ipv6 address 2001:DB8:ACAD::1/64
 ipv6 address FE80::1 link-local
 no shutdown
exit

interface Loopback0
 description Interface de loopback
 ip address 10.0.0.1 255.255.255.0
 ipv6 address 2001:DB8:ACAD::2::1/64
 ipv6 address FE80::1 link-local
exit

! Sécurité contre les attaques de login
login block-for 120 attempts 3 within 60

! Sauvegarde
copy running-config startup-config

---
```
### **Vérifications (Partie 5)**

```
! Sur S1
show interfaces FastEthernet0/24  ! Statut, vitesse, duplex
show mac-address-table interface FastEthernet0/24
ping 192.168.1.1                 ! Test IPv4
ping 2001:DB8:ACAD::1            ! Test IPv6

! Sur R1
show ip route                    ! Table de routage IPv4
show ipv6 route                  ! Table de routage IPv6
show ip interface brief          ! Résumé des interfaces IPv4
show ipv6 interface brief        ! Résumé des interfaces IPv6
```
