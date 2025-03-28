# Creating the Linux Guest OS

It is necessary to produce the students' Linux Guest OS such that it is as performant as possible whilst accounting for compatibility with most machines.  The settings here are a starting point, which the student will be able to change after importing the image into VirtualBox.

## Downloading the Linux distro

The CTI image is based on Canonical's Lubuntu 24.04.2 LTS, amd64 (Noble Numbat)

### Links to Canonical's download

[Landing Page](https://lubuntu.me/downloads/)  
[Direct download link](https://cdimage.ubuntu.com/lubuntu/releases/noble/release/lubuntu-24.04.2-desktop-amd64.iso)  
[Magnet link for torrent](https://cdimage.ubuntu.com/lubuntu/releases/noble/release/lubuntu-24.04.2-desktop-amd64.iso.torrent)  

## Adding the Linux ISO to the VirtualBox's Media Manager

By making VirtualBox aware of the Lubuntu `*.iso`, it will appear in dropdown menus for selection.  

1. In the host OS, launch VirtualBox.  
2. Press `Ctrl+D` to navigate to the Media Manager.  
3. Click `Add` from the top menu of large icons.
4. Navigate to the downloaded `*.iso` image, such as `[your location on disk]\lubuntu-22.04.3-desktop-amd64.iso`.  
5. Click `Open`.  

## Creating the Linux Virtual Machine

### Guest OS Settings

The base settings must be applied with the VirtualBox wizard.  Further settings must be applied from the Settings of the image **before** the first boot of the image.

#### Initial settings (Guided)

##### Name and Operating System

Name: LabVIEW CTI - Student Image - Lubuntu 24.04.2  
Folder:  [any]  
ISO Image: [your location on disk]\lubuntu-24.04.2-desktop-amd64.iso  
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

Learn more about the LabVIEW CTI at <https://www.gcentral.org/cti/>  

LabVIEW 2024 Q3 Community Edition, 64-bit  
Base Distro: Lubuntu 24.04.2

#### System

##### Processor

Extended Features: Enable PAE/NX

#### Display

##### Screen

Video Memory: 64 MB

#### Shared Folders

1. Under Machine Folders, add a share.
    - Folder Path: <C:\Users\Public\Downloads>
    - Folder Name: host_downloads
    - Automount: Enabled
    - Make Permanent: Enabled
2. Add the user `cti` to the Linux group `vboxsf` using the commands later in this document.

## First Boot of the Linux Virtual Machine

### GRUB Bootloader

Select "Try or Install Lubuntu"  

### Linux Try or Install Splash Screen

In Lubuntu 24.04.2 or greater, the user is first shown a simplified splash screen.  

1. `Select Your Language` as `English (United Kindgdom)`.  
2. Click `Install Lubuntu`.  

### The Linux OS Installer

1. Change the language to British English, if not already selected.  
2. Click Next.  
3. Set Region to Europe.  
4. Set Zone to London.  
5. Click Next.  
6. Ensure that Keyboard Model is Generic 105-key PC and that English (UK) is selected on the left column, with Default on the right column.  
7. Click Next.
8. Select Normal Installation.  Do not select other customization options.  
9. Click Next.  
10. When prompted, select Erase disk.
11. Click Next.
12. Apply the following user settings:
    - What is your name?  
CTI student
    - What name do you want to use to log in?  
cti
    - What is the name of this computer?  
cti-virtualbox  
    - Choose a password to keep your account safe.
labviewtraining  
13. Click Next.
14. Review the Summary and click Install.  
15. Click Done when installation completes to reboot the machine.
16. When prompted to remove the installation medium, ensure the the glyph of the CD on the bottom right is greyed out, meaning that it was already virtually ejected.
17. Press Enter.
18. When rebooted, take a VirtualBox snapshot immediately.  This is for the image creator's benefit, and will not be exported to the student user.

## Post-Install First Boot Settings

After logging in as the user `cti` with the password `labviewtraining`, additional settings must be applied to Lubuntu.

### Applying Updates

1. If prompted, by the Update Notifier, Apply updates.  Reboot if requested.
2. Launch QTerminal.
3. Run commange `sudo apt update`
4. Run command `sudo apt upgrade -y`
5. When updating and upgrading is complete, run command `exit`

### Install VirtualBox Guest Additions

1. Select Devices->Insert Guest Additions CD image from the main menu of the VirtualBox window surrounding the guest.
2. Launch QTerminal.
3. Type command `cd /media/cti/Vbox` and press `Tab`.  The path should autocomplete to the mount point that Linux has chosen.  Press `Enter` to run the command and change directory.
4. Run command `sudo ./VBoxLinuxAdditions.run`
5. Run command `exit`
6. Eject the Guest Additions disk using the CD glyph in the bottom-right of the Guest OS window.
7. Reboot the Lubuntu virtual machine.

### Enable the shared folder between the Host and Guest OS

Earlier in the instructions, a Shared Folder was added in the Lubuntu Guest OS settins in VirtualBox.  A shared folder is used to share data between the Host and Guest OS.  We are trying to avoid downloading files straight in the Guest OS because it grows the size of the Virtual Disk (*.vdi).  By default, although the settings earlier in the document create the permanent shared folder in Lubuntu, Linux permissions prevent a user from reading and writing to the mounted folder.

1. Launch QTerminal.
2. Run command `sudo adduser $USER vboxsf`
3. Reboot the virtual machine.
4. Upon logging in, open the File Explorer and notice the mounted folder `sf_host_downloads`.
5. Inspect that you see the contents of this folder, as all installers will be run from this folder.

## Setting User Permissions

The training material created by the CTI communicates over serial to a Raspberry Pi Pico with custom firmware for emulating NI-VISA instruments.  By default in Linux, users do not have permission to communicate with the serial ports.

1. Launch QTerminal.
2. Run command `groups cti` to verify that the user `cti` is not part of the `dialout` group.
3. Run command `sudo gpasswd --add cti dialout`.
4. Run command `groups cti` to verify that the user `cti` is now part of the `dialout` group.
5. Reboot the virtual machine for the changes to take effect.
