## LEDs SWITCH

![[204612.jpg]]

| N°  | Description            | N°  | Description                       |
| --- | ---------------------- | --- | --------------------------------- |
| 1   | SYST LED               | 5   | Speed LED                         |
| 2   | RPS LED (redundant PS) | 6   | PoE LED¹                          |
| 3   | Status LED             | 7   | Mode button                       |
| 4   | Duplex LED             | 8   | Port LEDs Status/Duplex/Speed/PoE |

## Démarrage System

![[s_Cisco boot-sequence.png]]
![[s_Cisco_Boot_Sequence.png]]
1. POST (Power On System Test)
2. IOS (chargement de l'IOS)
3. Config (chargement de la configuration s'il y a un fichier startup-config)
4. Et sinon Startup-menu (ou bien la configuration pour les nuls)

## Reset Routeur

Pour commencer, il faut démarrer le routeur en mode rommon.  
Pour cela il faut se connecter sur le port console, redémarrer le routeur et appuyer simultanément sur CTRL+pause pendant les 60 premières secondes du démarrage.


```
rommon 1 > confreg 0x2142
rommon 2 > reset
```


Le routeur va rebooter normalement.
Une fois le router redémarrer, on passe en mode enabble et on restaure l’ancienne configuration


```
Router>en
Router#copy startup-config running-confi
Router#conf t
Router(config)#enable secret <nouveau_pass>
Router(config)#end
Router#write mem
Building configuration...
[OK]
```



```
Router#conf t
Router(config)#config-register 0x2102
Router(config)#end
```


## Reset Switch

### Step 2 - Press Mode Button

Connect to the switch via console cable and make sure the connection is established.  
Power off the switch and hold down the **Mode** button. While holding down the **Mode** button power on the switch. Keep holding down the **Mode** button!

Hold down the **Mode** button until you see the following output:

```console
Using driver version 1 for media type 1
Base ethernet MAC Address: 00:00:00:00:00:00
Xmodem file system is available.
The password-recovery mechanism is enabled.
The system has been interrupted prior to initializing the
flash filesystem. The following commands will initialize
the flash filesystem, and finish loading the operating
system software:
flash_init
 boot
switch:
```

### 3 - Initialize Flash

To continue you need to initialize the flash file system.  
This can be done with the following command:

> flash_init

Your output should then look similar to the following:

```console
switch: flash_init
Initializing Flash...
mifs[2]: 10 files, 1 directories
mifs[2]: Total bytes : 1806336
mifs[2]: Bytes used : 612352
mifs[2]: Bytes available : 1193984
mifs[2]: mifs fsck took 1 seconds.
mifs[3]: 0 files, 1 directories
mifs[3]: Total bytes : 3870720
mifs[3]: Bytes used : 1024
mifs[3]: Bytes available : 3869696
mifs[3]: mifs fsck took 0 seconds.
mifs[4]: 5 files, 1 directories
mifs[4]: Total bytes : 258048
mifs[4]: Bytes used : 9216
mifs[4]: Bytes available : 248832
mifs[4]: mifs fsck took 0 seconds.
mifs[5]: 5 files, 1 directories
mifs[5]: Total bytes : 258048
mifs[5]: Bytes used : 9216
mifs[5]: Bytes available : 248832
mifs[5]: mifs fsck took 1 seconds.
 -- MORE --
mifs[6]: 566 files, 19 directories
mifs[6]: Total bytes : 57931776
mifs[6]: Bytes used : 28429312
mifs[6]: Bytes available : 29502464
mifs[6]: mifs fsck took 21 seconds.
...done Initializing Flash.
```

After the flash initialization is complete you can continue with the next step.

### Step 4 - Delete Config Files

To clear the switch configuration we need to delete two files. These are the **config.text** and **vlan.dat** file.  
If you want to keep the VLAN configuration for example you can simply skip the second step and only delete the **config.text** file.

#### Delete config.text

Use the following command to delete the **config.text** file from the flash directory:

> del flash:config.text

Confirm the command with **y**. Your output should look similar to this:

```console
switch: del flash:config.text
Are you sure you want to delete "flash:config.text" (y/n)?y
File "flash:config.text" deleted
```

#### Delete vlan.dat

Use the following command to delete the **vlan.dat** file from the flash directory:

> del flash:vlan.dat

Confirm the command with **y**. Your output should look similar to this:

```console
switch: del flash:vlan.dat
Are you sure you want to delete "vlan.dat" (y/n)?y
File "flash:vlan.dat" deleted
```

### Step 5 - Reboot

Great, the configuration is now deleted. You need to reboot with the following command:

> boot

After the reboot is done you should be greeted with the initial configuration dialogue:

```console
switch: boot
Loading "flash:c2960s-universalk9-mz.122-58.SE2.bin"...
--- System Configuration Dialog ---
Enable secret warning
----------------------------------
In order to access the device manager, an enable secret is required
If you enter the initial configuration dialog, you will be prompted for the enable secret
If you choose not to enter the intial configuration dialog, or if you exit setup without setting the enable secret,
please set an enable secret using the following CLI in configuration mode-
enable secret 0 <cleartext password>
----------------------------------
Would you like to enter the initial configuration dialog? [yes/no]:
% Please answer 'yes' or 'no'.
```

The resetting process is now complete. You can either continue with the configuration dialog or skip it and start building your new config.

---

### Conclusion

Resetting your switch configuration is not difficult and can be useful in many scenarios. As mentioned before this guide may still be valid for other Cisco Catalyst models.

## IP

