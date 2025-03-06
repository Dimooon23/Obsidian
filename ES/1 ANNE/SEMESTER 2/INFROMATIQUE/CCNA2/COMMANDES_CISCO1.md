```bash title:R1
Router>en
Router#conf t
Router(config)#interface gigabitEthernet 0/0/0
Router(config-if)#ip address 192.168.0.1 255.255.255.0
Router(config-if)#no shutdown
```

```bash title:R2
Router>en
Router#conf t
Router(config)#hostname R2
R2(config)#interface gigabitEthernet 0/0/1.10
R2(config-subif)#encapsulation dot1Q 10
R2(config-subif)#ip address 192.168.10.1 255.255.255.0
R2(config-subif)#no shutdown
R2(config-subif)#exit
R2(config)#interface gigabitEthernet 0/0/1.20
R2(config-subif)#encapsulation dot1Q 20
R2(config-subif)#ip address 192.168.20.1 255.255.255.0
R2(config-subif)#no shutdown
R2(config-subif)#exit
R2(config-if)#no shutdown
R2(config-if)#exit
R2(config)#interface gigabitEthernet 0/0/0
R2(config-if)#ip address 192.168.0.1 255.255.255.0
R2(config-if)#no shutdown
R2(config-if)#exit
```

```bash title:S1
Switch>en
Switch#conf t
Switch(config)#hostname S1
S1(config)#interface gigabitEthernet 0/2
S1(config-if)#switchport mode trunk
S1(config-if)#exit
S1(config)#interface gigabitEthernet 0/2
S1(config-if)#switchport mode trunk
S1(config-if)#exit
S1(config)#vlan 20
S1(config-vlan)#name servers
S1(config-vlan)#vlan 10
S1(config-vlan)#name computers
S1(config-vlan)#exit
S1(config)#interface range FastEthernet 0/1-10
S1(config-if-range)#switchport access vlan 10
S1(config-if-range)#exit
S1(config)#interface range FastEthernet 0/11-20
S1(config-if-range)#switchport access vlan 20
S1(config-if-range)#end
```

```bash title:S2
Switch#conf t
Switch(config)#interface gigabitEthernet 0/1
Switch(config-if)#switchport mode trunk
Switch(config-if)#exit
Switch(config)#vlan 10
Switch(config-vlan)#name computers
Switch(config-vlan)#exit
Switch(config)#vlan 20
Switch(config-vlan)#name servers
Switch(config-vlan)#exit
Switch(config)#interface range FastEthernet 0/1-10
Switch(config-if-range)#switchport access vlan 10
Switch(config-if-range)#exit
Switch(config)#interface range FastEthernet 0/11-20
Switch(config-if-range)#switchport access vlan 20
Switch(config-if-range)#end
```