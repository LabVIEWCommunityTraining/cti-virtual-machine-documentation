# Exporting the Linux Guest OS

Once the pre-export checklist is complete, the virtual machine will be exported and distributed as a *.ova file, which can be imported by VirtualBox, VMWare, and other popular hypervisor tools.

## Export Settings

1. Shutdown the Lubuntu virtual machine.
2. Select the virtual machine from the VirtualBox list of virtual machines.
3. Navigate to File->Export Appliance...
4. Under Format Settings apply the following:
    - Format: Open Virtualization Standard 2.0
    - File: [preferred path]\LabVIEW-CTI-Student-Image-Lubuntu-YYYYMMDD-#.ova
        - example: LabVIEW-CTI-Student-Image-Lubuntu-20231213-1.ova
            - (Kebabcase: All spaces must be converted to hyphens)
            - (ISO 8601 dates: Year Month Date as YYYYMMDD)
            - (Export count: a digit to represent the number of exports on this date.  The count resets to '1' when the date changes)
    - MAC Address Policy: Strip all network adapter MAC addressess
5. Under Appliance Settings apply the following:
    - Name: LabVIEW-CTI - Student Image - Lubuntu 22.04.3
    - Product: CTI - Student Image
    - Product-URL: <https://www.gcentral.org/g-community-resources/community-training-image>
    - Vendor: The LabVIEW Community Training Initiative
    - Vendor-URL: <https://www.gcentral.org/g-community-resources/community-training-image>
    - Version: YYYYMMDD.# (same as filename, e.g. 20231213-1)
    - Description: [should be pre-filled]
    - License: Work-in-progress
6. Click Finish

## Compressing the OVA file

Using 7-Zip 64-bit, compress the exported *.ova file into a *.zip file.  Apply the following settings:

- Archive file name: LabVIEW-CTI-Student Image-Lubuntu-YYYYMMDD-#.zip (same as *.ova)
- Archive format: zip
- Compression level: Ultra
- Compression method: LZMA2

The remaining settings should be appropriate for your development PC, to maximize the use of RAM and threads/cores available.
