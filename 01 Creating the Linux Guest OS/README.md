# Creating the Linux Guest OS

It is necessary to produce the students' Linux Guest OS such that it is as performant as possible whilst accounting for compatibility with most machines.  The settings here are a starting point, which the student will be able to change after importing the image into VirtualBox.

## Downloading the Linux distro

The CTI image is based on Canonical's Lubuntu 22.04.3 LTS, amd64 (Jammy Jellyfish)

### Links to Canonical's download

[Landing Page](https://lubuntu.me/downloads/)  
[Direct download link](https://cdimage.ubuntu.com/lubuntu/releases/22.04.3/release/lubuntu-22.04.3-desktop-amd64.iso)  
[Magnet link for torrent](https://cdimage.ubuntu.com/lubuntu/releases/22.04.3/release/lubuntu-22.04.3-desktop-amd64.iso.torrent)  

## Adding the Linux ISO to the VirtualBox's Media Manager

<mark> placeholder

## Creating the Linux Virtual Machine

### Guest OS Settings

The base settings must be applied with the VirtualBox wizard.  Further settings must be applied from the Settings of the image **before** the first boot of the image.

#### Initial settings (Guided)

##### Name and Operating System

Name: LabVIEW CTI - Student Image - Lubuntu 22.04.3  
Folder:  [any]  
ISO Image: [your location on disk]\lubuntu-22.04.3-desktop-amd64.iso  
Type: Linux  
Version: Ubuntu (64-bit)  

##### Hardware

Base Memory: 4096 MB  
Processors: 2 Cores  

##### Hard disk

Hard Disk File Location: [default]  
Size: 80 GB  
**Note:** Ensure that Pre-allocate Full Size is **NOT** selected.  

#### Additional settings (Guided)

##### General

###### Advanced

Shared Clipboard: Bidirectional  
Drag'n'Drop: Bidirectional  

###### Description

Insert text:  
Student Image - LabVIEW Community Training Initiative (CTI)  

Learn more about the LabVIEW CTI at <https://www.gcentral.org/g-community-resources/community-training-image>  

LabVIEW 2023 Q3 Community Edition, 64-bit  
Base Distro: Lubuntu 22.04.3

#### System

##### Processor

Extended Features: Enable PAE/NX

#### Display

##### Screen

Video Memory: 64 MB

#### Shared Folders

<mark> placeholder

## First Boot of the Linux Virtual Machine

### GRUB Bootloader

Select "Try or Install Lubuntu"  

### Linux Live OS Desktop

Click on the Desktop icon "Install Lubuntu 22.04 LTS"  

### The Linux OS Installer

1. Change the language to British English
2. Click Next  
3. Set Region to Europe
4. Set Zone to London
5. Click Next
6. Ensure that Keyboard Model is Generic 105-key PC and that English (UK) is selected on the left column, with Default on the right column.
7. Click Next.
8. When prompted, select Erase disk.
9. Click Next.
10. Apply the following user settings:
    - What is your name?  
CTI student
    - What name do you want to use to log in?  
cti
    - What is the name of this computer?  
cti-virtualbox  
    - Choose a password to keep your account safe.
labviewtraining  
11. Click Next.
12. Review the Summary and click Install.  
13. Click Done when installation completes to reboot the machine.
14. When prompted to remove the installation medium, ensure the the glyph of the CD on the bottom right is greyed out, meaning that it was already virtuall ejected.
15. Press Enter.
16. When rebooted, take a VirtualBox snapshot immediately.  This is for the image creator's benefit, and will not be exported to the student user.

## Post Install First Boot Settings

After logging in as the user cti with the password labview training, additional settings must be applied to Lubuntu.

### Applying Updates

1. If prompted, by the Update Notifier, Apply updates.  Reboot if requested.
2. Launch QTerminal.
3. Run commange ```sudo apt update```
4. Run command ```sudo apt upgrade -y```
5. When updating and upgrading is complete, run command ```exit```

### Install VirtualBox Guest Additions

<mark> This subtopic is workin progress as Lubuntu lacks the essential headers to apply guest addtions.  Installing headers could increase the guest OS size.  
1. Select Devices->Insert Guest Additions CD image from the main menu of the VirtualBox window surrounding the guest.
2. Launch QTerminal.
3. Type command ```cd /mediacti/Vbox``` and press ```Tab```.  The path should autocomplete to the mount point that Linux has chosen.  Press ```Enter``` to run the command and change directory.
4. Run command ```sudo ./VBoxLinuxAdditions.run```
5. Run command ```exit```
