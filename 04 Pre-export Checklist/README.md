# Pre-export checklist

This is a list of verifications the creator of the image must assert before exporting a CTI Virtual Machine image as a *.ova and releasing to the public.

- [ ] Delete and remove all shared folder from the Host to the Guest OS.
- [ ] Unmount any folders or media, such as the NI installer ISO.
- [ ] Set desktop background to the CTI desktop background.
- [ ] Cleaned apt cache with ```sudo apt clean all```
- [ ] Remove all downloads and files from the ```cti``` user folders.
- [ ] Set display resolution to 1366 x 768, in windowed mode.
- [ ] Place QTerminal shortcut on the desktop, and mark it as trusted.
- [ ] Place LabVIEW Development Environment shortcut on the desktop, and mark it as trusted.

## How-to

### Delete and remove all shared folder from the Host to the Guest OS

1. Navigate to the main VirtualBox window and find the guest OS on the left-hand menu.
2. Under the ```Details``` section, find ```Shared Folders```.
3. Remove all shared folders.
4. Reboot the guest OS.

### Unmount any folders or media, such as the NI installer ISO

1. Run the File Manager application.
2. In the bottom left of the directory tree, look for mounted media.
3. Find the eject symbol [⏏️] and click it.
4. Repeat for all media.
5. Reboot the guest OS.

### Set desktop background to the CTI desktop background

1. Download the [desktop background](/visual_identity/CTI_desktop.png) from the [visual identity folder](/visual_identity/visual_identity) to your host OS.
2. Use the drag-and-drop feature of VirtualBox Guest Additions to place the file on the guest OS at ```/homes/cti/Pictures```.
3. Right-click on the guest OS desktop background and select ```Desktop Preferences```.
4. Click the tab ```Background```.
5. ```Browse``` for the background image file at ```/home/cti/Pictures```
6. Close all dialog boxes with ```OK```.

### Cleaned apt cache

1. Launch QTerminal.
2. Run command ```sudo apt clean all```.

### Remove all downloads and files

1. Run the File Manager apllication.
2. Find the ```cti``` user folders.
3. Other than the desktop background, remove all files that may have been temporarily placed in these folder during development.

### Set display resolution

1. From the host OS, ensure you can see the window surrounding the guest OS.
2. From the ```View``` menu, navigate to ```Virtual Screen``` and select ```1366 x 768```.

### Place QTerminal shortcut on the desktop

1. Click the Application Menu (Windows Start button equivalent).
2. Hover over ```System Tools```.
3. Right-click on ```QTerminal```.
4. Select ```Add to Desktop```.
5. Right-click on the desktop shortcut that was just created.
6. Select ```Trust this executable```, which should remove an exclamation mark glyph.

### Place LabVIEW Development Environment shortcut on the desktop

1. Click the Application Menu (Windows Start button equivalent).
2. Hover over ```National Instruments```.
3. Right-click on ```LabVIEW 2023 Q3 64-bit```.
4. Select ```Add to Desktop```.
5. Right-click on the desktop shortcut that was just created.
6. Select ```Trust this executable```, which should remove an exclamation mark glyph.
