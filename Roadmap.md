# Introduction #

The following list are the requirements for each major release version.

# Details #

## 0.8.x (Alpha) ##
> The alpha version of NetbookInstaller are those in which large amounts of code changes are occurring. The interface to add more machine support may change at any moment and break previous release's plists.
  * Add DeviceID and VendorID detection. This will be used to install appropriate kexts based on the hardware.

## 0.9.x (Beta) ##
The main requirement for the beta versions of NetbookInstaller and NetbookBootMaker is for a finalized interface to add more machine support.
  * ~~NetbookCD and NetbookBootMaker should share same codebase.~~
  * (WIP) No restrictions on the host OS. 0.9.x (boot maker) should be able to run on Tiger, Linux, or Windows.
  * Semi-stable interface / api
  * Error checking in all major functions.
  * All functions and methods should have a valid return value. At the moment, many return YES even when an error occurs.
  * ~~Proper memory management. NetbookInstaller must release appropriate variables once it's done with them.~~
  * Proper privilege escalation. Th 0.8.x versions currently use an insecure method of privilege escalation. A helper application should be used instead.
  * better runCMD methods. Currently, runCMD runs each command by escalating privileges. Instead, it should ask the helper to run a command for it, which will in turn use the NSFileManager over system() to copy / delete / move files. NetbookInstaller should not make calls to system() and the helper application should use try to avoid using the system call.

## 1.0.x ##
  * Unchanging interface / api
  * Stable (Graceful error handling as well as notifying the user of problems).
  * Fully modular. You should be able to add **any** machine support, even non netbooks, to this version without messing with the source code.
  * DSDT patcher library. NetbookInstaller should **not** be using the DSDT patcher as a standalone binary. If at all possible, this would be either integrated in the bootloader, or it should be a library.