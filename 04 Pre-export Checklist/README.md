# Pre-export checklist

This is a list of verifications the creator of the image must assert before exporting a CTI Virtual Machine image as a *.ova and releasing to the public.

- [ ] Unmount any folders or media, such as the NI installer ISO.
- [ ] Set desktop background to the CTI desktop background.
- [ ] Cleaned apt cache with `sudo apt` commands.
- [ ] Remove all downloads and files from the ```cti``` user folders.
- [ ] Set display resolution to 1366 x 768, in windowed mode.
- [ ] Place QTerminal shortcut on the desktop, and mark it as trusted.
- [ ] Place LabVIEW Development Environment shortcut on the desktop, and mark it as trusted.
- [ ] Verify user `cti` is part of the `dialout` group.
- [ ] Verify links to resources work
- [ ] Delete and remove all shared folder from the Host to the Guest OS.
- [ ] (Experimental) Compact the guest OS VDI file using VBoxManage.exe

## How-to

### Unmount any folders or media, such as the NI installer ISO

1. Run the File Manager application.
2. In the bottom left of the directory tree, look for mounted media.
3. Find the eject symbol [⏏️] and click it.
4. Repeat for all media.
5. Reboot the guest OS.

### Set desktop background to the CTI desktop background

1. Download the [desktop background](/visual_identity/CTI_desktop.png) from the [visual identity folder](/visual_identity/visual_identity) to your shared folder on the host OS.
2. In th guest OS, use the File Manager to navigate to `/media/sf_host_downloads`.  
3. Copy the file `CTI_desktop_png` to `/homes/cti/Pictures`.
4. Right-click on the guest OS desktop background and select `Desktop Preferences`.
5. Click the tab `Background`.
6. `Browse` for the background image file at `/home/cti/Pictures`
7. Close all dialog boxes with `OK`.

### Cleaned apt cache

1. Launch QTerminal.
2. Run command `sudo apt clean all`.
3. Run command `sudo apt autoremove`.

### Remove all downloads and files

1. Run the File Manager apllication.
2. Find the `cti` user folders.
3. Other than the desktop background, remove all files that may have been temporarily placed in these folder during development.

### Set display resolution

1. From the host OS, ensure you can see the window surrounding the guest OS.
2. From the `View` menu, navigate to `Virtual Screen` and select `1366 x 768`.

### Place QTerminal shortcut on the desktop

1. Click the Application Menu (Windows Start button equivalent).
2. Hover over `System Tools`.
3. Right-click on `QTerminal`.
4. Select `Add to Desktop`.
5. Right-click on the desktop shortcut that was just created.
6. Select `Trust this executable`, which should remove an exclamation mark glyph.

### Place LabVIEW Development Environment shortcut on the desktop

1. Click the Application Menu (Windows Start button equivalent).
2. Hover over `National Instruments`.
3. Right-click on `LabVIEW 2024 64-bit`.
4. Select `Add to Desktop`.
5. Right-click on the desktop shortcut that was just created.
6. Select `Trust this executable`, which should remove an exclamation mark glyph.

### Verify cti user is part of the dialout group

1. Launch QTerminal.
2. Run command `groups cti` to verify that the user `cti` is part of the `dialout` group.

### Verify links to resources work

1. Click on the application launcher.
2. Find the `other` category.
3. Click all the shortcuts and make sure they work in Firefox.

### Delete and remove all shared folder from the Host to the Guest OS

1. Navigate to the main VirtualBox window and find the guest OS on the left-hand menu.
2. Under the `Details` section, find `Shared Folders`.
3. Remove all shared folders.
4. Reboot the guest OS.

### (Experimental) Compact the guest OS

#### In the guest OS

1. In the guest OS, launch QTerminal.
2. Install bleachbit using `sudo apt install bleachbit`.
3. From the guest OS launcher, navigate to `System Tools` and run `Bleachbit`.
4. From the left-hand side, select all options, regardless of warnings.
5. Click `Clean` to run.
6. From the guest OS launcher, navigate to `System Tools` and run `Bleachbit (root)`.
7. Type in the standard user password when prompted.
8. From the left-hand side, select all options, regardless of warnings.
9. Click `Clean` to run.
10. When completed, shutdown the guest OS.

#### In the host OS

1. Ensure that the guest OS is shutdown and the VirtualBox window is closed.
2. Launch Microsoft PowerShell.
3. Navigate to `C:\Program Files\Oracle\VirtualBox`.
4. Run command ` .\VBoxManage.exe modifymedium disk --compact "path\to\guestOS\*.vdi`.

    - An example path could be `"C:\Users\[username]\VirtualBox VMs\LabVIEW CTI - Student Image - Lubuntu 24.04.2\LabVIEW CTI - Student Image - Lubuntu 24.04.2.vdi"`
