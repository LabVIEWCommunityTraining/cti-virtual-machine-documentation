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

