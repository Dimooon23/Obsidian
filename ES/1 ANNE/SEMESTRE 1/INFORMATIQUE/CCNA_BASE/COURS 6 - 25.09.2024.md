### Exercice 7.2.7 - FAIRE RESUME
[[7.2.7-lab---view-network-device-mac-addresses (1).pdf]]
##### Step3
###### Configuration du Switch

```Shell title:"Enter global configuration mode"
Switch> enable 
Switch# configure terminal 
Enter configuration commands, one per line. End with CNTL/Z. 
Switch(config)#
```

```Shell title:"Assign a hostname to the switch"
Switch(config)# hostname S1 
```

```Shell title:"Disable DNS lookup"
S1(config)# no ip domain-lookup
```

```Shell title:"Configure and enable the SVI interface for VLAN 1"
S1(config)# interface vlan 1
S1(config-if)# ip address 192.168.1.2 255.255.255.0
S1(config-if)# no shutdown
S1(config-if)# end
*Mar 1 00:07:59.048: %SYS-5-CONFIG_I: Configured from console by console
```

### Exercice 7.3.7 FAIRE RESUME
[[7.3.7-lab---view-the-switch-mac-address-table.pdf]]

#### Part 1
##### Step 4

```Shell title:"Configure Password Switch"
S1>enable
S1#conf t
Enter configuration commands, one per line.  End with CNTL/Z.
S1(config)#line console 0
S1(config-line)#password cisco
S1(config-line)#login
S1(config-line)#Enable secret class
```



