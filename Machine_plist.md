# Introduction #

machine.plist is a configuration file telling NetbookInstaller (and related apps) what to install bassed on what netbook this it is being run on.

# Details #

| Entry | Type | Meaning |
|:------|:-----|:--------|
| Support Files | String | Folder located at bundle/Contents/Resources/SupportFiles/, tells NetbookInstaller where to look for machine specific files |
| Extensions Directory | String | Folder located in /Extra to save extensions to |
| Long Name | String | Name visible to user |
| Bluetooth Vendor ID | Integer | Decimal integer of the bluetooth vendor id |
| Bluetooth Device ID | Integer | Decimal integer of the bluetooth device id |
| EFI Strings | Array | List of EFI strings to inlcude in com.apple.Boot.plist. Currently unused |
| Kext Blacklist | Array | List of kexts to exclude from /Extra. The kext is also removed from /S/L/E and moved to /S/L/ExtensionsBackup |
| DSDT Patches | Dictionary | List of patch files associated with a section of AML code to replace. |