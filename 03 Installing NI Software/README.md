# Installing NI Software

NI Software installers will be downloaded to the Shared Folder on the Host OS [%public%\downloads] and executed within the Guest OS from [/sf_host_downloads].  Consider taking a VirtualBox snapshot before following the next steps so that you can revert back to a recent state in case there are issues.

## Download NI LabVIEW Community Edition

1. Ensure you are on a browser on the Host OS (Windows) and not the Guest OS (Lubuntu).
2. Navigate to <www.ni.com/downloads>.
3. Search ```labview community``` and click the best result.
4. Select ```LabVIEW 2023 Q3``` and ```Linux```.
5. Click ```Download``` and download the file to the shared folder on the Host OS.
6. Navigate to the shared folder when the download completes.
7. Unzip the contents of the NI download to a local folder, such as ```ni-labview-2023-community-23.3.1```.

## Installing LabVIEW Community Edition

1. Read the [Knowledgebase article](https://knowledge.ni.com/KnowledgeArticleDetails?id=kA03q000000YGwsCAG&l=en-GB) by NI as background information.
2. Launch QTerminal on the Lubuntu Guest OS.
3. Run command ```sudo apt install /media/sf_host_downloads/ni-labview-2023-community-23.3.1/ni-labview-2023-community_23.3.1.49157-0+f5-ubuntu2204_all.deb```.
4. Run command ```sudo apt update```.
5. Run command ```sudo apt install ni-labview-2023-community```.
6. Enter ```Y``` when prompted to install.
7. Reboot the virtual machine.

## Download NI-VISA

1. Ensure you are on a browser on the Host OS (Windows) and not the Guest OS (Lubuntu).
2. Navigate to <www.ni.com/downloads>.
3. Search ```ni visa``` and click the best result.
4. Select ```2023 Q4``` and ```Linux```.
5. Click ```Download``` and download the file to the shared folder on the Host OS.
6. Navigate to the shared folder when the download completes.
7. Unzip the contents of the NI download to a local folder, such as ```NILinux2023Q4DeviceDrivers```.

## Installing NI-VISA

1. Launch QTerminal on the Lubuntu Guest OS.
2. Run command ```sudo apt install /media/sf_host_downloads//media/sf_host_downloads/NILinux2023Q4DeviceDrivers/ni-ubuntu2204-drivers-stream.deb```.
3. Run command ```sudo apt update```.
4. Run command ```sudo apt install ni-visa```.
5. Enter ```Y``` when prompted to install.
6. Reboot the virtual machine.

## Placing a LabVIEW shortcut on the desktop

1. Click the Application Menu (Windows Start button equivalent).
2. Hover over ```National Instruments```.
3. Right-click on ```LabVIEW 2023 Q3 64-bit```.
4. Select ```Add to Desktop```.
5. Right-click on the desktop shortcut that was just created.
6. Select ```Trust this executable```, which should remove an exclamation mark glyph.
