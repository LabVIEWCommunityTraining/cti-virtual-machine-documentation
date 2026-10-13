# Installing NI Software

NI Software installers will be downloaded to the Shared Folder on the Host OS `%public%\downloads` and executed within the Guest OS from `/sf_host_downloads`.  
>VM Snapshot:  
>Consider taking a VirtualBox snapshot before following the next steps so that you can revert back to a recent state in case there are issues.

## Download NI LabVIEW Community Edition

1. Ensure you are on a browser on the Host OS (Windows) and not the Guest OS (Lubuntu).
2. Navigate to <www.ni.com/downloads>.
3. Search `labview community` and click the best result.
4. Select `Linux` and `LabVIEW 2026 Q3`.
5. Click `Download` and download the file to the shared folder on the Host OS.
6. Navigate to the shared folder when the download completes.
7. Unzip the contents of the NI download to a local folder, such as `ni-labview-2026-community-26.3.1-linux`.

## Installing LabVIEW Community Edition

1. Read the [Knowledgebase article](https://knowledge.ni.com/KnowledgeArticleDetails?id=kA03q000000YGwsCAG&l=en-GB) by NI as background information.
2. Launch QTerminal on the Lubuntu Guest OS.
3. Run command `sudo apt install /media/sf_host_downloads/ni-labview-2026-community-26.3.1_linux/ni-labview-2026-community_26.3.1.49165-0+f13-ubuntu2404_all.deb`.
4. Run command `sudo apt update`.
5. Run command `sudo apt install ni-labview-2026-community`.  If you receive an error regarding missing dotnet dependencies, see the section below.
6. Enter `Y` when prompted to install.
7. Reboot the virtual machine.

### Install the DotNet 8.0 runtime

1. Read the [Microsoft article](https://learn.microsoft.com/en-us/dotnet/core/install/linux-ubuntu-install?tabs=dotnet8&pivots=os-linux-ubuntu-2604) by Microsoft as background information.
2. Launch QTerminal on the Lubuntu Guest OS.
3. Run command `sudo add-apt-repository ppa:dotnet/backports`.  
4. Run command `sudo apt-get install -y dotnet-runtime-8.0`.
5. Resume the LabVIEW installation above.

## Download NI-VISA

1. Ensure you are on a browser on the Host OS (Windows) and not the Guest OS (Lubuntu).
2. Navigate to <www.ni.com/downloads>.
3. Search `ni visa` and click the best result.
4. Select `Linux` and `2026 Q3`.
5. Click `Download` and download the file to the shared folder on the Host OS.
6. Navigate to the shared folder when the download completes.
7. Unzip the contents of the NI download to a local folder, such as `NILinux2026Q3DeviceDrivers`.

## Installing NI-VISA

>Note: Driver change in this version of the VM.  
>Previous VMs used the package `ni-ubuntu2404-drivers-stream.deb`, however this was switched to `static` drivers due to issue #21.  

1. Launch QTerminal on the Lubuntu Guest OS.
2. Run command `sudo apt install /media/sf_host_downloads/NILinux2026Q3DeviceDrivers/ni-ubuntu2404-drivers-2026Q3.deb`.
3. Run command `sudo apt update`.
4. Run command `sudo apt install ni-visa`.
5. Enter `Y` when prompted to install.
6. Reboot the virtual machine.

## Placing a LabVIEW shortcut on the desktop

1. Click the Application Menu (Windows Start button equivalent).
2. Hover over `National Instruments`.
3. Right-click on `LabVIEW 2026 64-bit`.
4. Select `Add to Desktop`.
5. Right-click on the desktop shortcut that was just created.
6. Select `Trust this executable`, which should remove an exclamation mark glyph.

## Downloading JKI's VIPM for Linux Desktop

1. Ensure you are on a browser on the Host OS (Windows) and not the Guest OS (Lubuntu).
2. Navigate to <www.vipm.io/desktop/versions/>.
3. Scroll down to `Linux` and check for the latest official release, such as `2026.3.4056`.  This is a [direct link](https://www.vipm.io/desktop/installer/vipm-26.3.4056-linux-installers.zip).  
4. Download the file to the shared folder on the Host OS.
5. Navigate to the shared folder when the download completes.
6. Unzip the contents of the NI download to a local folder, such as `vipm-26.3.4056-linux-installers`.  

## Installing JKI's VIPM

>VM Snapshot:  
>Consider taking a VirtualBox snapshot before following the next steps so that you can revert back to a recent state in case there are issues.  

1. Launch QTerminal on the Lubuntu Guest OS.
2. Run command `sudo apt install /media/sf_host_downloads/vipm-26.3.4056-linux-installers/vipm_26.3.2-4056_amd64.deb`
3. Reboot the virtual machine.

## Correcting Font Alignment in for LabVIEW software in *ubuntu Flavors

1. Launch QTerminal on the Lubuntu Guest OS.  
2. Check if folder `~/.config/fontconfig` exists.  If it does not, run command `mkdir ~/.config/fontconfig`.  
3. Run command `touch ~/.config/fontconfig/fonts.conf`.  
4. Run command `nano ~/.config/fontconfig/fonts.conf`.  
5. Paste the text:  

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
    <fontconfig>
     <selectfont>
        <rejectfont>
             <glob>/usr/share/fonts/opentype/urw-base35/Nimbus*.otf</glob>
        </rejectfont>
     </selectfont>
    </fontconfig>
    ```

6. Click `Yes` if prompted during the paste action.  
7. Ensure the text formatting matches the text in issue #19.  
8. Press `Ctrl+X` to exit nano and be prompted to save the file.  
9. Type `Y` to save the contents with the defaults.  
10. Reboot the virtual machine.
