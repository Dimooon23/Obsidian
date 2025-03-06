- [[#1. **Overview of End Devices & Network Devices**|1. **Overview of End Devices & Network Devices**]]
- [[#2. **Components of an Operating System**|2. **Components of an Operating System**]]
- [[#3. **User Interfaces for OS**|3. **User Interfaces for OS**]]
- [[#4. **Purpose of an Operating System**|4. **Purpose of an Operating System**]]
- [[#5. **Access Methods to Configure Network Devices**|5. **Access Methods to Configure Network Devices**]]
- [[#6. **Check Your Understanding of Cisco IOS Access**|6. **Check Your Understanding of Cisco IOS Access**]]
- [[#7. **Command Modes**|7. **Command Modes**]]
- [[#8. **Check your understanding of Cisco IOS Modes**|8. **Check your understanding of Cisco IOS Modes**]]
- [[#9. **Configuration Files**|9. **Configuration Files**]]
- [[#10. **Interfaces and Ports**|10. **Interfaces and Ports**]]
- [[#Structure|Structure]]
- [[#Commands|Commands]]
- [[#Shortcuts|Shortcuts]]
- [[#Switch Configuration|Switch Configuration]]

# CHAPITRE 2: Operating Systems

### 1. **Overview of End Devices & Network Devices**
**End Devices** and **Network Devices** both have an **Operating System (OS)**.

### 2. **Components of an Operating System**
- **Kernel**:
  - The portion of the OS that interacts with hardware.
- **Shell**:
  - The portion of the OS that interacts with applications.
  
### 3. **User Interfaces for OS**
- **CLI (Command-Line Interface)**:
  - Text-based interface where users enter commands.
- **GUI (Graphical User Interface)**:
  - Interface where users can interact using graphics and mouse inputs.

### 4. **Purpose of an Operating System**

| **GUI**                                           | **CLI**                                               |
| ------------------------------------------------- | ----------------------------------------------------- |
| Use a mouse to make selections and run programs   | Use a keyboard to run CLI-based network programs      |
| Enter text and text-based commands                | Enter text and text-based commands                    |
| View output on a monitor                          | View output on a monitor                              |

---

### 5. **Access Methods to Configure Network Devices**

| **Method**             | **Description**                  |
| ---------------------- | -------------------------------- |
| **Console**            | Direct connection via physical port |
| **Secure Shell (SSH)** | Remote, secure CLI method        |
| **Telnet**             | Remote, insecure CLI method      |

---

### 6. **Check Your Understanding of Cisco IOS Access**

1. **Which access method would be most appropriate if you were in the equipment room with a new switch that needs to be configured?**
   - [x] Console
   - [ ] Telnet/SSH
   - [ ] Aux

2. **Which access method would be most appropriate if your manager gave you a special cable and told you to use it to configure the switch?**
   - [x] Console
   - [ ] Telnet/SSH
   - [ ] Aux

3. **Which access method would be the most appropriate for in-band access to the IOS over a network connection?**
   - [ ] Console
   - [x] Telnet/SSH
   - [ ] Aux

4. **Which access method would be most appropriate if you call your manager to tell him you cannot access your router in another city over the internet and he provides you with the information to access the router through a telephone connection?**
   - [ ] Console
   - [ ] Telnet/SSH
   - [x] Aux

### 7. **Command Modes**

| Command Mode         | Description                                                                                                                                         | Device Prompt |
| -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | ------------- |
| User Exec Mode       | - Mode allows access to only a limited number of basic monitoring commands.<br>- It is often referred to as “view-only" mode                        | Switch>       |
| Privileges Exec Mode | - Mode allows access to all commands and features.<br>- The user can use any monitoring commands and execute configuration and management commands. | Switch#       |
![[Pasted image 20241004150526.png]]
```Powershell title:Switch Modes
Switch>enable
Switch#configure terminal
Switch(config)# line console 0
Switch(config-line)# exit
Switch(config)#end
Switch#
```

Pour sortir du mode il faut utiliser la commande **Exit**
### 8. **Check your understanding of Cisco IOS Modes**

1. **Which IOS mode allows access to all commands and features?**

   - [ ] global configuration mode
   - [ ] interface subconfiguration mode
   - [ ] line console subconfiguration mode
   - [x] privileged EXEC mode
   - [ ] user EXEC mode

2. **Which IOS mode are you in if the `Switch(config)#` prompt is displayed?**

   - [x] global configuration mode
   - [ ] interface subconfiguration mode
   - [ ] line console subconfiguration mode
   - [ ] privileged EXEC mode
   - [ ] user EXEC mode

3. **Which IOS mode are you in if the `Switch>` prompt is displayed?**

   - [ ] global configuration mode
   - [ ] interface subconfiguration mode
   - [ ] line console subconfiguration mode
   - [ ] privileged EXEC mode
   - [x] user EXEC mode

4. **Which two commands would return you to the privileged EXEC prompt regardless of the configuration mode you are in? (Choose two)**

   - [x] `CTRL+Z`
   - [ ] disable
   - [ ] enable
   - [x] end
   - [ ] exit

### 9. **Configuration Files**
- startup-config
	- Saved configuration in NVRAM which boots then the devise is turn on
-  running-config
	- Saved configuration in RAM (Current configuration)

```
Sw-Floor-1# show running-config
Building configuration...
Current configuration : 1351 bytes
!
! Last configuration change at 00:01:20 UTC Mon Mar 1 1993
!
version 15.0
no service pad
service timestamps debug datetime msec
service timestamps log datetime msec
service password-encryption
!
hostname Sw-Floor-1
!
(output omitted)
```

- To restore unsaved startup-configuration we can use command "reload" 
	- Negatif : the brief amount of time the device will be offline, causing network downtime
- To erase saved startup-configuration use  "erase startup-config"
### 10. **Interfaces and Ports**
- The differences between various types of media
	- Distance the media can successfully carry a signal
	- Environment in which the media is to be installed
	- Amount of data and the speed at which it must be transmitted
	- Cost of the media and installation
- Each switch comes with one SVI appearing in the default configuration "out-of-the-box." The default SVI is interface VLAN1
# CHAPITRE 3: Protocols and Models

### 1. **Communication Protocols Definition**
- PC contient
	- Ethernet MAC
	- WLAN MAC
	- IP Adresses (IPv4, IPv6)
	- Default Gateway
	- DNS Server

- Protocole
	- Un protocole de communication est une spécification de plusieurs règles pour un type de communication particulier
### 2. **Rule Establishment Commun**
- Common computer protocols include the following requirements:
	- Message encoding
	- Message formatting and encapsulation
	- Message size
	- Message timing
	- Message delivery options
### 3. **Message Size**
- Big message is decomposed into multiple little messages and every message has his destination
### 4. **Message Timing**
- Flow Control
	- Defines how much information can be sent and the speed at which it can be delivered
- Response Timeout
	- That specify how long to wait for responses and what action to take if a response timeout occurs
- Access method
	- Determines when someone can send a message (To not have colllisions)
### 5. **Message Delivery Options**
- Unicast
- Multicast
- Broadcast
### 6. **Network Protocol Overview**
| **Protocol Type**                    | **Description**                                                                                                                                                                                                                                                                                             |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Network Communications Protocols** | Protocols enable two or more devices to communicate over one or more networks. The Ethernet family of technologies involves a variety of protocols such as IP, Transmission Control Protocol (TCP), HyperText Transfer Protocol (HTTP), and many more.                                                      |
| **Network Security Protocols**       | Protocols secure data to provide authentication, data integrity, and data encryption. Examples of secure protocols include Secure Shell (SSH), Secure Sockets Layer (SSL), and Transport Layer Security (TLS).                                                                                              |
| **Routing Protocols**                | Protocols enable routers to exchange route information, compare path information, and then to select the best path to the destination network. Examples of routing protocols include Open Shortest Path First (OSPF) and Border Gateway Protocol (BGP).                                                     |
| **Service Discovery Protocols**      | Protocols are used for the automatic detection of devices or services. Examples of service discovery protocols include Dynamic Host Configuration Protocol (DHCP) which discovers services for IP address allocation, and Domain Name System (DNS) which is used to perform name-to-IP address translation. |
### 7. **Protocol Interaction**
![[Pasted image 20241010155820.png]]
### 8. **TCP/IP Protocol Suit**
![[Pasted image 20241010162259.png]]

#### Application Layer
Name System

- **DNS** - Domain Name System. Translates domain names such as cisco.com, into IP addresses.

Host Config

- **DHCPv4** - Dynamic Host Configuration Protocol for IPv4. A DHCPv4 server dynamically assigns IPv4 addressing information to DHCPv4 clients at start-up and allows the addresses to be re-used when no longer needed.
- **DHCPv6** - Dynamic Host Configuration Protocol for IPv6. DHCPv6 is similar to DHCPv4. A DHCPv6 server dynamically assigns IPv6 addressing information to DHCPv6 clients at start-up.
- **SLAAC** - Stateless Address Autoconfiguration. A method that allows a device to obtain its IPv6 addressing information without using a DHCPv6 server.

Email

- **SMTP** - Simple Mail Transfer Protocol. Enables clients to send email to a mail server and enables servers to send email to other servers.
- **POP3** - Post Office Protocol version 3. Enables clients to retrieve email from a mail server and download the email to the client's local mail application.
- **IMAP** - Internet Message Access Protocol. Enables clients to access email stored on a mail server as well as maintaining email on the server.

File Transfer

- **FTP** - File Transfer Protocol. Sets the rules that enable a user on one host to access and transfer files to and from another host over a network. FTP is a reliable, connection-oriented, and acknowledged file delivery protocol.
- **SFTP** - SSH File Transfer Protocol. As an extension to Secure Shell (SSH) protocol, SFTP can be used to establish a secure file transfer session in which the file transfer is encrypted. SSH is a method for secure remote login that is typically used for accessing the command line of a device.
- **TFTP** - Trivial File Transfer Protocol. A simple, connectionless file transfer protocol with best-effort, unacknowledged file delivery. It uses less overhead than FTP.

Web and Web Service

- **HTTP** - Hypertext Transfer Protocol. A set of rules for exchanging text, graphic images, sound, video, and other multimedia files on the World Wide Web.
- **HTTPS** - HTTP Secure. A secure form of HTTP that encrypts the data that is exchanged over the World Wide Web.
- **REST** - Representational State Transfer. A web service that uses application programming interfaces (APIs) and HTTP requests to create web applications.
#### Transport Layer
Connection-Oriented

- **TCP** - Transmission Control Protocol. Enables reliable communication between processes running on separate hosts and provides reliable, acknowledged transmissions that confirm successful delivery.

Connectionless

- **UDP** - User Datagram Protocol. Enables a process running on one host to send packets to a process running on another host. However, UDP does not confirm successful datagram transmission.
#### Internet Layer
Internet Protocol

- **IPv4** - Internet Protocol version 4. Receives message segments from the transport layer, packages messages into packets, and addresses packets for end-to-end delivery over a network. IPv4 uses a 32-bit address.
- **IPv6** - IP version 6. Similar to IPv4 but uses a 128-bit address.
- **NAT** - Network Address Translation. Translates IPv4 addresses from a private network into globally unique public IPv4 addresses.

Messaging

- **ICMPv4** - Internet Control Message Protocol for IPv4. Provides feedback from a destination host to a source host about errors in packet delivery.
- **ICMPv6** - ICMP for IPv6. Similar functionality to ICMPv4 but is used for IPv6 packets.
- **ICMPv6 ND** - ICMPv6 Neighbor Discovery. Includes four protocol messages that are used for address resolution and duplicate address detection.

Routing Protocols

- **OSPF** - Open Shortest Path First. Link-state routing protocol that uses a hierarchical design based on areas. OSPF is an open standard interior routing protocol.
- **EIGRP** - EIGRP - Enhanced Interior Gateway Routing Protocol. An open standard routing protocol developed by Cisco that uses a composite metric based on bandwidth, delay, load and reliability.
- **BGP** - Border Gateway Protocol. An open standard exterior gateway routing protocol used between Internet Service Providers (ISPs). BGP is also commonly used between ISPs and their large private clients to exchange routing information.
#### Access Layer
Address Resolution

- **ARP** - Address Resolution Protocol. Provides dynamic address mapping between an IPv4 address and a hardware address.
    
    **Note**: You may see other documentation state that ARP operates at the Internet Layer (OSI Layer 3). However, in this course we state that ARP operates at the Network Access layer (OSI Layer 2) because it's primary purpose is the discover the MAC address of the destination. A MAC address is a Layer 2 address.
    

Data Link Protocols

- **Ethernet** - Defines the rules for wiring and signaling standards of the network access layer.
- **WLAN** - Wireless Local Area Network. Defines the rules for wireless signaling across the 2.4 GHz and 5 GHz radio frequencies.
### 9. **Reference Models OSI/TCP IP**
![[Pasted image 20241010164807.png]]
![[Pasted image 20241010165952.png]]
![[Pasted image 20241010170213.png]]
### 10. **PDU**
![[Pasted image 20241010171853.png]]
- PDU
	- Protocol Data Unit

- Segmentation 
	- Division of packet into multiple segments

- PDU 
	- Segment
### 11. Adresses (How packet is delivred)
![[Pasted image 20241012120205.png]]
### 12. **How packages are sent**
![[Pasted image 20241012121339.png]]
Quand c'est un réseau différent le pc1 envoi le packet à la gateway donc au routeur. Cette couche est changé à chaque changement du réseax
# CHAPITRE 4 : Physical Layer
### Cables
![[Pasted image 20241012164134.png]]
- **Electromagnetic interference (EMI) or radio frequency interference (RFI) -** EMI and RFI signals can distort and corrupt the data signals being carried by copper media. Potential sources of EMI and RFI include radio waves and electromagnetic devices, such as fluorescent lights or electric motors.
- **Crosstalk** - Crosstalk is a disturbance caused by the electric or magnetic fields of a signal on one wire to the signal in an adjacent wire. In telephone circuits, crosstalk can result in hearing part of another voice conversation from an adjacent circuit. Specifically, when an electrical current flows through a wire, it creates a small, circular magnetic field around the wire, which can be picked up by an adjacent wire.

### Fiber Optic
- SMF (Single mode fiber)
	- More wide
- MMF (Multimode fiber)
	- More expencise and less wild
# All about commands

### Structure

| Ppompt  | Command | Space | <span style="background:rgba(240, 107, 5, 0.2)">Keyword(s)</span> or <span style="background:rgba(3, 135, 102, 0.2)">Argument(s)</span> |
| ------- | ------- | ----- | --------------------------------------------------------------------------------------------------------------------------------------- |
| Switch> | show    |       | <span style="background:rgba(240, 107, 5, 0.2)">ip protocols</span>                                                                     |
| Switch> | ping    |       | <span style="background:rgba(3, 135, 102, 0.2)">192.168.10.5</span>                                                                                                                            |

|**Convention**|**Description**|
|---|---|
|**boldface**|Boldface text indicates commands and keywords that you enter literally as shown.|
|_italics_|Italic text indicates arguments for which you supply values.|
|**[**x**]**|Square brackets indicate an optional element (keyword or argument).|
|**{**x**}**|Braces indicate a required element (keyword or argument).|
|**[**x **{**y **\|** z **}]**|Braces and vertical lines within square brackets indicate a required choice within an optional element. Spaces are used to clearly delineate parts of the command.|


### Commands

```Cisco title:"Help"
Router>?
Exec commands:
<1-99> Session number to resume
connect Open a terminal connection
disable Turn off privileged commands
disconnect Disconnect an existing network connection
enable Turn on privileged commands
...

Router>show ?
arp Arp table
cdp CDP information
class-map Show QoS Class Map
clock Display the system clock
controllers Interface controllers status
crypto Encryption module
dot11 IEEE 802.11 show information
...
```

### Shortcuts

| **Keystroke**                          | **Description**                                                                             |
| -------------------------------------- | ------------------------------------------------------------------------------------------- |
| **Tab**                                | Completes a partial command name entry.                                                     |
| **Backspace**                          | Erases the character to the left of the cursor.                                             |
| **Ctrl+D**                             | Erases the character at the cursor.                                                         |
| **Ctrl+K**                             | Erases all characters from the cursor to the end of the command line.                       |
| **Esc D**                              | Erases all characters from the cursor to the end of the word.                               |
| **Ctrl+U** or **Ctrl+X**               | Erases all characters from the cursor back to the beginning of the command line.            |
| **Ctrl+W**                             | Erases the word to the left of the cursor.                                                  |
| **Ctrl+A**                             | Moves the cursor to the beginning of the line.                                              |
| **Left Arrow**or **Ctrl+B**            | Moves the cursor one character to the left.                                                 |
| **Esc B**                              | Moves the cursor back one word to the left.                                                 |
| **Esc F**                              | Moves the cursor forward one word to the right.                                             |
| **Right Arrow**or **Ctrl+F**           | Moves the cursor one character to the right.                                                |
| **Ctrl+E**                             | Moves the cursor to the end of command line.                                                |
| **Up Arrow**or **Ctrl+P**              | Recalls the previous command in the history buffer, beginning with the most recent command. |
| **Down Arrow**or **Ctrl+N**            | Goes to the next line in the the history buffer.                                            |
| **Ctrl+R** or **Ctrl+I** or **Ctrl+L** | Redisplays the system prompt and command line after a console message is received.          |
### Switch Configuration

```Powershell title:"Enter global configuration mode"
Switch> enable 
Switch# configure terminal 
Switch(config)#
```

```Powershell title:"Assign a hostname to the switch"
Switch(config)# hostname S1 
```

```Powershell title:"Disable DNS lookup"
S1(config)# no ip domain-lookup
```

```Powershell title:"Configure and enable the SVI interface for VLAN 1"
S1(config)# interface vlan 1
S1(config-if)# ip address 192.168.1.2 255.255.255.0
S1(config-if)# no shutdown
S1(config-if)# exit
S1(config-if)# ip default-gateway 192.168.1.1
```

```Powershell title:"Configure Password Switch"
S1>enable
S1#conf t
S1(config)#line console 0
S1(config-line)#password cisco
S1(config-line)#login
S1(config-line)#Enable secret class
```

```Powershell title:"Save configuration"
S1#copy running-config startup-config
```

```Powershell title:"Restore unsaved startup-configuration"
S1#reload
```

```Powershell title:"Erase startup-config"
S1#erase startup-config
```

```Powershell title:"Show configuration"
S1# show running-config
S1# show startup-config
```

```Powershell title:"Configure privilieged EXEC password (uncrypted)"
R1>enable
R1#configure terminal
R1(config)#enable password cisco
```

```Powershell title:"Configure privilieged EXEC password (crypted)"
R1>enable
R1#configure terminal
R1(config)#enable secret itsasecret
```

```Powershell title:"Configure console password"
R1>enable
R1#conf t
R1(config)#line console 0
R1(config-line)#password letmein
```

```Powershell title:"Ajouter banner"
R1>enable
R1#conf t
R1(config)#banner motd # Unauthorized access is strictly prohibited. #
```

