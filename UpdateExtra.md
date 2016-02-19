# Introduction #

NetbookInstaller has a very specific method for updating kexts that are used. We use a total of three kext caches throughout the system. The first, the boot cache, it generated from /System/Library/Extensions just like in a real mac. No kexts installed by NetbookInstaller are ever in that cache. The second kext cache is /System/Library/Extensions.mkext. The only kexts in here are from the /System/Library/Extensions/ directory. The last  kext location, inside, /Extra, houses all of the kexts installed by NetbookInstaller.


# Details #

UpdateExtra is used to regenerate **every** kext cache used by the bootloader. The fist two kext caches mentioned above or only regenerated for a just-in-case scenario. They aren't touched by NetbookInstaller, but you never know what (or who) might modify them.

In order to add or remove a kext, do the following:
  1. Open a finder window
  1. Press cmd + shift + G
  1. Type /Extra in the window that appeared in from the above command and hit enter.
  1. Copy any kexts you want to /Extra/[machineName](machineName.md)Ext/
  1. Run /Extra/UpdateExtra.app to rebuild the extension cache.