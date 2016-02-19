# Introduction #

The SupportFiles directory contains all of the machine specific files, configurations, and the bootloaders.

# Details #

| /Bootloader | This directory contains bootloaders that may be installed by the user. This follows the bootloader.plist file|
|:------------|:-------------------------------------------------------------------------------------------------------------|
| /Bootloader/%Bootloader display name% | Main directory for each specific bootloader, contains boot0 and other files                                  |
| /DSDTPatcher | Contains files required to patch a machine's dsdt                                                            |
| /DSDTPatcher/Tools | Contains tools to obtain the dsdt from the IORegistery                                                       |
| /OldGMA     | Contains a patched version of AppleIntelIntegratedFramebuffer.kext which support mirroring                   |
| /machine    | Contains all machine specific files                                                                          |
| /machine/General | Cantains files to be installed on **ALL** machines                                                           |
| /machine/%name% | Main directory for your specific machine                                                                     |
| /machine/%name%/10.6 Extensions | Extensions to be installed to /Extra/<ext dir> when the target has a kernel version of 10.6.9 or later       |
| /machine/%name%/3rdPartyPrefPanes | Preference panes to be installed to /Library/PreferencePanes                                                 |
| /machine/%name%/DSDT Patches | Machine specific dsdt patches, enabled in the machine plist                                                  |
| /machine/%name%/DisplayProfiles | Disply Profiles to be installed to /Library/ColorSync/Profiles/                                              |
| /machine/%name%/Extensions | Extensions to be installed to /Extra/<ext dir>                                                               |
| /machine/%name%/ExtraFiles | Any file to be installed to /Extra/                                                                          |
| /machine/%name%/LaunchAgents | Launch Agents to be installed to /Library/LaunchAgents                                                       |
| /machine/%name%/LocalExtensions | Extensions to be installed to /System/Library/Extensions, however certain version NetbookInstaller version may install the extensions to /Extra/<ext dir> instead. **Note:** If at all possible, please do not use this directory. |
| /machine/%name%/PrefPanes | Preference panes to be installed to /System/Library/PreferencePanes                                          |
| /machine/%name%/Preferences | com.apple.PowerManagment.plist copied from here and installed to /Library/Preferences/SystemConfiguration after edited. |
| /machine/%name%/SystemConfiguration | System Configuration files, to be installed to /System/Library/SystemConfiguration                           |