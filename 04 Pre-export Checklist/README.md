# Pre-export checklist

This is a list of verifications the creator of the image must assert before exporting a CTI Virtual Machine image as a *.ova and releasing to the public.

- [ ] Delete and remove all shared folder from the Host to the Guest OS.
- [ ] Unmount any folders or media, such as the NI installer ISO.
- [ ] Set desktop background to the CTI desktop background.
- [ ] Cleaned apt cache with ```sudo apt clean all```
- [ ] Removed all downloads and files from the ```cti``` user folders.
- [ ] Set display resolution to 1366 x 768, in windowed mode.
- [ ] Place QTerminal shortcut on the desktop, and mark it as trusted.
- [ ] Place LabVIEW Development Environment shortcut on the desktop, and mark it as trusted.
