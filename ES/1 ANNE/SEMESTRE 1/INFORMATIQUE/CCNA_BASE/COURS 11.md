[[10.3.4-packet-tracer---connect-a-router-to-a-lan_fr-FR 1.pdf]]

```Powershell title:"Commandes config switch"
en
conf t
interface vlan 1
ip address 192.168.1.2 255.255.255.0
no shutdown
ip default-gateway 192.168.1.1
exit
hostname S1
exit
copy running-config startup-config
```

## Résume Chapitre 10

The following tasks should be completed when configuring initial settings on a router.

1. Configure the device name.

```Router(config)# hostname _hostname_```

2. Secure privileged EXEC mode.

```Router(config)# enable secret _password_```

3. Secure user EXEC mode.

```
Router(config)# line console 0  
Router(config-line)# password _password_  
Router(config-line)# login
```

4. Secure remote Telnet / SSH access.
```
Router(config-line)# line vty 0 4  
Router(config-line)# password _password_  
Router(config-line)# login  
Router(config-line)# transport input {ssh | telnet}
```
5. Secure all passwords in the config file.
```
Router(config-line)# exit
Router(config)# service password-encryption
```
6. Provide legal notification.

```Router(config)# banner motd _delimiter message delimiter_```

7. Save the configuration.
```
Router(config)# end  
Router# copy running-config startup-config
```

The task to configure a router interface is very similar to a management SVI on a switch. Specifically, it includes issuing the following commands:

```
Router(config)# interface _type-and-number_  
Router(config-if)# description _description-text_  
Router(config-if)# ip address _ipv4-address subnet-mask_  
Router(config-if)# ipv6 address _ipv6-address/prefix-length_  
Router(config-if)# no shutdown
```

# Exam 8-10

# Item Feedback Report

## ITN (Version 7.00) - Communicating Between Networks Exam

---

### Instructions
Below is the feedback on items for which you did not receive full credit. Some interactive items may not display your response.

---

### Subscores
- **Domain Knowledge - Standard Score**
- **Basic Device Management.Initial Device Config.CLI**
- **Network Basics.Protocols.Network Layer**
- **Network Basics.Communications.ARP**

---

### Questions

#### Question 2
**Which statement describes a feature of the IP protocol?**

- **Correct Response:** IP relies on upper layer services to handle situations of missing or out-of-order packets.
- **Your Response:** IP relies on upper layer services to handle situations of missing or out-of-order packets.

**Feedback:**  
IP protocol is a connection-less protocol, considered unreliable in terms of end-to-end delivery. It relies on upper layer services, such as TCP, to resolve issues with missing or out-of-order packets.

---

#### Question 3
**Why is NAT not needed in IPv6?**

- **Correct Response:** Any host or user can get a public IPv6 network address because the number of available IPv6 addresses is extremely large.
- **Your Response:** Any host or user can get a public IPv6 network address because the number of available IPv6 addresses is extremely large.

**Feedback:**  
The large number of public IPv6 addresses eliminates the need for NAT, allowing for end-to-end connectivity without NAT-induced problems.

---

### References
- ITN  
  - 1.8.1 Network Layer Characteristics  
  - 1.8.3 IPv6 Packet  
  - 1.9.2 ARP
---

#### Question 4
**What are two services provided by the OSI network layer? (Choose two.)**

- **Correct Responses:**
  - Routing packets toward the destination
  - Encapsulating PDUs from the transport layer
- **Your Responses:**
  - Routing packets toward the destination
  - Collision detection

**Feedback:**  
The OSI network layer provides services such as:
- Addressing
- Encapsulation
- Routing
- De-encapsulation

Error detection, placing frames on the media, and collision detection are all functions of the Data Link layer.

---

#### Question 8
**What is one advantage that the IPv6 simplified header offers over IPv4?**

- **Correct Response:** Efficient packet handling
- **Your Response:** Efficient packet handling

**Feedback:**  
The IPv6 simplified header offers advantages like:
- Better routing efficiency and performance
- No requirement for processing checksums
- Simplified and more efficient extension header mechanisms
- A Flow Label field for per-flow processing

---

#### Question 11
**What information does the loopback test provide?**

- **Correct Response:** The TCP/IP stack on the device is working correctly
- **Your Response:** The TCP/IP stack on the device is working correctly

**Feedback:**  
The loopback test verifies that the host NIC, drivers, and TCP/IP stack are functioning. It does not provide information about network connectivity to other hosts.

---

#### Question 13
**How do hosts ensure that their packets are directed to the correct network destination?**

- **Correct Response:** They maintain a local routing table that contains routes for the loopback interface, local network, and remote default route.
- **Your Response:** They always direct their packets to the default gateway, which will be responsible for the packet delivery.

**Feedback:**  
Hosts must maintain their own local routing table to direct network packets correctly. This table typically includes:
- A route to the loopback interface
- A local network route
- A default route for remote networks

---

#### Question 15
**What statement describes the function of the Address Resolution Protocol?**

- **Correct Response:** ARP is used to discover the MAC address of any host on the local network.
- **Your Response:** ARP is used to discover the MAC address of any host on the local network.

**Feedback:**  
ARP helps a device discover the MAC address of a host within the same network when the IP address is already known.

---

#### Question 18
**Which destination address is used in an ARP request frame?**

- **Correct Response:** FFFF.FFFF.FFFF
- **Your Response:** 255.255.255.255

**Feedback:**  
The ARP request frame is sent as a Layer 2 broadcast (FFFF.FFFF.FFFF) to all devices on the Ethernet LAN. The destination host will reply with its MAC address.

---

#### Question 20
**Which two types of IPv6 messages are used in place of ARP for address resolution?**

- **Correct Responses:**
  - Neighbor Solicitation
  - Neighbor Advertisement
- **Your Responses:** Broadcast and Echo Reply

**Feedback:**  
IPv6 uses **Neighbor Solicitation** and **Neighbor Advertisement** messages (part of the Neighbor Discovery Protocol) to perform address resolution, replacing ARP.

---

---

#### Question 22
**What is the purpose of the default gateway?**

- **Correct Response:** To route traffic from the local network to other networks
- **Your Response:** To route traffic from the local network to other networks

**Feedback:**  
The default gateway serves as the intermediary for sending packets from a host to any destination outside its local network.

---

#### Question 24
**Which two statements describe characteristics of Layer 3? (Choose two.)**

- **Correct Responses:**
  - Enables end-to-end communication between devices on different networks
  - Uses IP addresses for routing data packets
- **Your Responses:**
  - Provides error correction for frames
  - Uses IP addresses for routing data packets

**Feedback:**  
Layer 3 of the OSI model, also known as the Network layer, handles:
- Logical addressing (IP addresses)
- Routing between different networks
Error correction is a function of lower layers like the Data Link layer.

---

#### Question 25
**What is the purpose of a subnet mask in IPv4?**

- **Correct Response:** It divides the IP address into network and host portions.
- **Your Response:** It divides the IP address into network and host portions.

**Feedback:**  
A subnet mask determines which part of an IP address represents the network and which part represents the host. This is essential for IP-based communication within and across networks.

---

#### Question 28
**Why does a network implement VLANs?**

- **Correct Responses:**
  - To segment network traffic based on logical groups
  - To improve security by isolating sensitive traffic
- **Your Responses:**
  - To segment network traffic based on logical groups
  - To reduce congestion by implementing smaller broadcast domains

**Feedback:**  
VLANs provide logical segmentation of networks, which improves security and management. Although they can reduce congestion, this is achieved by limiting the broadcast domain, not the segmentation itself.

---

### Summary
This feedback report covers the following key areas of networking:
- IPv4 and IPv6 protocols and addressing
- ARP and Neighbor Discovery Protocol
- Routing, VLANs, and the OSI model
- Subnetting and default gateways

The detailed feedback is intended to enhance understanding of concepts where full credit was not achieved.

---

**References:**
- ITN Modules:  
  - 1.8.1 Network Layer Characteristics  
  - 1.9.2 ARP  
  - 1.10.3 IPv6 Addressing  
  - 1.11.4 VLANs  

