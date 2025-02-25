# Installing NI Software

NI Software installers will be downloaded to the Shared Folder on the Host OS [%public%\downloads] and executed within the Guest OS from [/sf_host_downloads].  Consider taking a VirtualBox snapshot before following the next steps so that you can revert back to a recent state in case there are issues.

## Download NI LabVIEW Community Edition

1. Ensure you are on a browser on the Host OS (Windows) and not the Guest OS (Lubuntu).
2. Navigate to <www.ni.com/downloads>.
3. Search `labview community` and click the best result.
4. Select `Linux` and `LabVIEW 2024 Q3`.
5. Click `Download` and download the file to the shared folder on the Host OS.
6. Navigate to the shared folder when the download completes.
7. Unzip the contents of the NI download to a local folder, such as `ni-labview-2024-community-24.3.2-linux`.

## Installing LabVIEW Community Edition

1. Read the [Knowledgebase article](https://knowledge.ni.com/KnowledgeArticleDetails?id=kA03q000000YGwsCAG&l=en-GB) by NI as background information.
2. Launch QTerminal on the Lubuntu Guest OS.
3. Run command `sudo apt install /media/sf_host_downloads/ni-labview-2024-community-24.3.2-linux/ni-labview-2024-community_24.3.2.49152-0+f0-ubuntu2204_all.deb`.
4. Run command `sudo apt update`.
5. Run command `sudo apt install ni-labview-2024-community`.
6. Enter `Y` when prompted to install.
7. Reboot the virtual machine.

## Download NI-VISA

1. Ensure you are on a browser on the Host OS (Windows) and not the Guest OS (Lubuntu).
2. Navigate to <www.ni.com/downloads>.
3. Search `ni visa` and click the best result.
4. Select `Linux` and `2024 Q4`.
5. Click `Download` and download the file to the shared folder on the Host OS.
6. Navigate to the shared folder when the download completes.
7. Unzip the contents of the NI download to a local folder, such as `NILinux2024Q4DeviceDrivers`.

## Installing NI-VISA

1. Launch QTerminal on the Lubuntu Guest OS.
2. Run command `sudo apt install /media/sf_host_downloads/NILinux2024Q4DeviceDrivers/ni-ubuntu2404-drivers-stream.deb`.
3. Run command `sudo apt update`.
4. Run command `sudo apt install ni-visa`.
5. Enter `Y` when prompted to install.
6. Reboot the virtual machine.

## Placing a LabVIEW shortcut on the desktop

1. Click the Application Menu (Windows Start button equivalent).
2. Hover over `National Instruments`.
3. Right-click on `LabVIEW 2024 64-bit`.
4. Select `Add to Desktop`.
5. Right-click on the desktop shortcut that was just created.
6. Select `Trust this executable`, which should remove an exclamation mark glyph.

## (experimental) Downloading JKI's VIPM Release Candidate

1. Ensure you are on a browser on the Host OS (Windows) and not the Guest OS (Lubuntu).
2. Navigate to <www.vipm.io/desktop/versions/>.
3. Scroll down to `Linux` and check for the latest official release, such as `2022.1.2354`.
4. If the version numbering indicates it is older than 2023, gain access to the VIPM Discord using the link on the [LabVIEW Wiki](https://labviewwiki.org/wiki/LabVIEW_Community_Managed_Discord_Servers) and find the latest Release Candidate for Linux.  
5. Upload a copy of the VIPM `*.zip` archive to [resources](/resources/).  
6. Download a copy of the VIPM Release candidate, such as [vipm-2023.3.1.2608-linux.zip](/resources/vipm-2023.3.1.2608-linux.zip).  
7. Navigate to the shared folder when the download completes.
8. Download the shell script [cti_vipm_install.sh](/resources/cti_vipm_install.sh) into the same shared folder as the VIPM download.  

## (experimental) Installing JKI's VIPM

Consider taking a VirtualBox snapshot before following the next steps so that you can revert back to a recent state in case there are issues.  

1. Launch QTerminal on the Lubuntu Guest OS.
2. Run command `sudo chmod +x /media/sf_host_downloads/cti_vipm_install.sh`.
3. Run command `sudo /media/sf_host_downloads/cti_vipm_install.sh vipm-2023.3.1.2608-linux.zip`.
4. Reboot the virtual machine.
