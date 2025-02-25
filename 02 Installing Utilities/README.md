# Installing Utilities on the Guest OS

Additional utilities and settings must be applied to the Guest OS so that students can have access to the necessary resources for taking part in training and continuing their learning.

## Creating Application Launcher shortcuts

Hidden folders can be change to visible by pressing the shortcut key `Ctrl+H` in the File Manager.  

1. Using the File Manager, navigate to the hidden folder `/homes/cti/.local/share`.
2. If the subfolder `applications` does not exist, create it.
3. Enter the subdirectory `/homes/cti/.local/share/applications`.

### Shortcut: CTI GitHub

1. In the main menu, navigate to `Tools` -> `Create Launcher`.
2. Use the following inputs:
    - Name: Visit LabVIEW Community Training on GitHub
    - Description: Launches web browser and navigates to the CTI GitHub
    - Command: `firefox https://github.com/LabVIEWCommunityTraining`
    - Icon: firefox
    - Terminal: No
    - Type: Application

### Shortcut: GCentral.org

1. In the main menu, navigate to `Tools` -> `Create Launcher`.
2. Use the following inputs:
    - Name: Visit GCentral.org
    - Description: Launches web browser and navigates to GCentral
    - Command: `firefox https://www.gcentral.org`
    - Icon: firefox
    - Terminal: No
    - Type: Application

### Shortcut: NI forums

1. In the main menu, navigate to `Tools` -> `Create Launcher`.
2. Use the following inputs:
    - Name: Post a question on the NI Forums
    - Description: Launches web browser and navigates to forums.ni.com
    - Command: `firefox https://forums.ni.com`
    - Icon: firefox
    - Terminal: No
    - Type: Application

### Shortcut: VIPM.io

1. In the main menu, navigate to `Tools` -> `Create Launcher`.
2. Use the following inputs:
    - Name: Browse add-ons at VIPM.io
    - Description: Launches web browser and navigates to vipm.io
    - Command: `firefox https://www.vipm.io`
    - Icon: firefox
    - Terminal: No
    - Type: Application

### Test the shortcuts

1. Click the application launcher (Windows start button equivalent).
2. Notice that a new category called 'Other' has been created.
    - If the category is not present, or the links have not been created, reboot the Guest OS before continuing.
3. Click each of the links that are now present.
4. Firefox should launch and navigate to the embedded links.
