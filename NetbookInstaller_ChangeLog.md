
# NetbookInstaller 0.8.4 #
## RC2 (Released 05/??/2010) ##
#### _All Netbooks_ ####
  * Updated touchpad driver, reads trackpad resolution correctly.
  * NBI Includes a MacbookPro5,1 plist. MacbookAir cannot be used, it doesn't speed step properly (2,1) and (1,1) causes a panic. Thanks to 18seven for the tip.
  * NBI Can now work with an smbios.plist
  * Fixed NBI assuming / if only one partition is available (this primarily affects the boot drive);
  * Fixed NetbookBootMaker boot image so that boot0 and boot1h are written correctly

### _Asus EEE 1201N_ ###
  * Added volume up / down / mute support. Initial support for other hotkeys exists, however they are not mapped to a keypress
  * Added play / pause, Skip track, Previous track support.
  * Fixed Sleep

## RC1 (Released 03/26/2010) ##
#### _All Netbooks_ ####
  * DSDT Patches preserve order, nolonger random.
  * Updated to OSXRestart.kext (1.5) speedstepping
  * Added CPUIDOverride.kext (and CPUIDSymbols.kext) so that AppleIntelCPUPowerManagment.kext no longer panics unload. This should allow for native to be implemented. NOTE; This kext loads too late in the bot process for things like About This Mac )and sysctl) to read this change. The sole purpose is so that kexts that require a certain cpuid don't panic. NOTE2: A kernel patch is still **required** cpuid\_set\_info will always be called before this kext is, meaning that the panic int hat function must be removed.
  * Removed SleepEnabler, no longer needed (AppleIntelCPUPowerManagment.kext takes care of it).
  * removed NullCPUPowerManagment.kext. See above.
  * Replaced ClamshellDisplay.kext with LidSleep.kext, no longer needs to be located in /S/L/E and works on 10.6.3.
  * SMBIOS model information is read at boot time, allowing a machine specific dsdt to be loaded using the boot disk.
  * Chameleon now has a recovery options. Use the boot argument "recovery=y" to load a known good mkext (/Extra/UpdateExtensions/). NOTE: Recovery loads the 32bit kernel by default so that the kernel patcher doesn't fail.
  * NBI is automatically run when a system update is detected. A NBI logo will be shown to signify this (**DONT** reboot).
  * OS X Installation vs Install DVD detection. NBI nolonger will give the user the option to run on an Install DVD, while NetbookBootMaker (and BootMakerCLI) won't run on an Installed partition.
  * Ramdisks now have meaningful names.
  * NBBMcli (dvd patcher) should now clean up after itself (at least it'll clean up better than before).
  * 10.6.3 Support
  * Build script bugfixes
  * Initial 64bit support

#### _Asus EEE 1201N_ ####
  * Initial (incomplete) Asus 1201N support.
  * DSDT Patcher no longer fails / loops.

#### _Dell Mini 10v ####
  * Added display profiles from DougA._


# NetbookInstaller 0.8.3 #
## RC 1 ##
#### _All Machines_ ####
  * DSDT generation bug should be fixed, however I have not tested this.
  * Updated touchpad driver's gesture code. This should work fairly well on most netbooks with a large touchpad.
  * Fixed the "Internal devices showing as external' bug (aka, the orange icon bug).
  * Updates to FakeSMC v2 from netkas.
  * Clean up /dsdt.aml if it exists (correct location is in /Extra).

#### _Dell Mini 9_ ####
  * Battery meter no longer states that the battery needs service (unless if it really does).
  * DSDT Patch so that bluetooth does not affect sleep.
  * Included AppleAzaliaAudio for speaker output only.

#### _Dell Mini 10v_ ####
  * Battery meter no longer states that the battery needs service (unless if it really does).
  * DSDT patch to disable the F1 button
  * Updated touchpad driver to reduce jumping.

#### _Lenovo S10_ ####
  * DSDT Patch to enable sleep
  * Included Bluetooth vendor  and device id's to patch the bluetooth kext.
  * Patched AppleAzaliaAudio to include headphone switching.

## RC 2 ##
#### _All Netbooks_ ####
  * Added some error checking that should help out with the 10.5.0 -> 10.5.6 upgrade problem (aka, missing mach\_kernel.10.5.6)
  * gptsync is run on new installs. This should let you install Windows XP on a GUID / GPT drive.
  * NetbookInstaller is no longer needed to be run after a new install (bug with 0.8.2 RC1 only).

#### _Dell Mini 10v_ ####
  * Included new version of VerbHelper from lnxneo which should help with audio after sleep problems on Snow Leopard.

## RC 3 ##
#### _All Netbooks_ ####
  * Fixed edge scrolling bug introduced with 10v touchpad changes. A couple of other touchpad changes are also included.
  * NetbookBootMaker now assumes a generic netbook. This shouldn't change anything, but it might work a bit better when generated on a known netbook and used on a different machine.
  * NetbookInstaller will now set the target partition as active in the MBR. This will help with Windows XP dual boots in that you no longer have to manually set the OS X install as active after installing XP. (NOTE: this has not been tested on dual boot installs yet).
  * Fixed a few typos.
  * ncluded gdisk instead of gptsync to create the hybrid mbr table. This works with previous installs now too.

#### _Dell Mini 9_ ####
  * Included a DSDT patch so that usb devices are not improperly removed during sleep

#### _Dell Mini 10v_ ####
  * Upgraded to the latest VerbHelper from lnexeo. Audio now resumes after sleep.
  * Included a DSDT patch so that usb devices are not improperly removed during sleep

## RC 4 ##
#### _All Netbooks_ ####
  * Hibernation **should** be disableable now in NebtookInstaller (but don't take my word for it..)
  * Patched SleepEnabler to work on any current 10.6.x kernel. you must run NetbookInstaller **before** the 10.6.2 update (you can reboot before it too).
  * Patched Chameleon so that it applies tea's 10.6.2 kernel patch at runtime.
  * Stability fixes with NetbookInstaller (added more error checking).
  * Various internal API changes

## RC 5 ##
#### _All Netbooks_ ####
  * Updated chameleon patch to enhance the 10.6.2 kernel support (makes it non 10.6.2 specific).
  * Chameleon patch to determine the native lcd resolution (via edid)
  * Chameleon patch to incoperate the 915resolution program for intel GPU's
  * Fixed DSDT generation bug introduced in RC4.
  * Mirroring off command located at /Extra/bin/mirroring.
  * Replaces OpenHaltRestart.kext with OSXRestart.kext. Fixes restart after sleep issue.
  * Updated to FakeSMC v2.5 from netkas.
  * Updated UpdateExtra.app so that it no longer becomes unresponsive.

### _Dell Mini 10v_ ###
  * Temporary fix for the A06 bios.

### _Dell Mini 9_ ###
  * Updated audio for the Mini 9. This is a temporary fix and will change in the future.

### _GMA500 Netbooks_ ###
  * Included VaioPEnabler.kext to set the graphics framebuffer on bootup. This has not been tested.

---

# NetbookInstaller 0.8.2 #
  * Fixed target os version detection. NetbookInsatller will no longer refuse to install on updated OS's later than the one it was released for
  * Fix /Extra deletion bug. You no longer have to select both regenerate dsdt and install extensions for the machine to be be bootable.
  * Added Chameleon 2 RC3 ([r658](https://code.google.com/p/netbook-installer/source/detail?r=658)) to the installer.
  * Added Mini 10v audiofix (thanks go to lnxneo for this)
  * Updated touchpad driver especially for the 10v to allow two finger scrolling to be enable while also allowing dragging.
  * Numerous under the hood changes specifically to make the installer more modular and to allow for it to be modified without recompiling it. This is due to the use of plists.
  * Initial 10.6 support (Including numerous bug fixes that causes the program to terminate early).
  * USB Audio devices now work
  * A few other minor changes to the gui and to a couple of kexts
  * You no longer need to delete the dsdt file to generate a new one after a hardware upgrade. The dsdt patcher will now use your original dsdt if you install Chameleon 2 RC3.

---

# NetbookInstaller 0.8.1 #

---

# NetbookInstaller 0.8.0 #
  * Initial version, port of DellEFI to Objective C