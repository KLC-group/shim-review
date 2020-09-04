Make sure you have provided the following information:

 - [x] link to your code branch cloned from rhboot/shim-review in the form user/repo@tag
 - [x] completed README.md file with the necessary information
 - [x] shim.efi to be signed
 - [x] public portion of your certificate embedded in shim (the file passed to VENDOR_CERT_FILE)
 - [x] any extra patches to shim via your own git tree or as files
 - [x] any extra patches to grub via your own git tree or as files
 - [x] build logs

Our submission tree is at: https://github.com/KLC-group/shim-review

###### What organization or people are asking to have this signed:
KLC Group LLC 
https://klc-group.com
https://CipherDriveOne.com 

###### What product or service is this for:
CipherDriveOne is a Pre-boot Authentication and Key Management software which
when combined with a Self-Encrypting Drive (SED) provides a powerful 
“data-at-rest” encryption solution. Users must successfully authenticate to 
CipherDrive before keys are sent to the connected Opal2 compatible SED drive.
CipherDrive combined with the SED drive protects host OS and all stored data on
local storage from unauthorized access, loss, and exposure and makes it easy to
comply with privacy and breach regulations.

###### What is the origin and full version number of your shim?
https://github.com/rhboot/shim/tree/15

###### What's the justification that this really does need to be signed for the whole world to be able to boot it:
CipherDrive starts when the computer boots and authenticates users at pre-boot time.
In order to provide the trust that CipherDrive software has not been tampered with
(e.g. “evil maid issue”), CipherDrive must run with Secure Boot on. When combined
with Secure Boot, CipherDrive provides authorized users with boot level trust in a
relatively easy to integrity control environment before the computer can start the
operating system. CipherDrive is in the process of being Common Criteria certified.

###### How do you manage and protect the keys used in your SHIM?
It is stored in a repository in highly secured area on a separate computer
(normally disconnected) only used for signing and only few trusted 
administrators can access it.


###### Do you use EV certificates as embedded certificates in the SHIM?
We have embedded EV certificate
https://github.com/KLC-group/shim-review/blob/KLC-Group-shim-20200904/KLC_Group_LLC.der

###### What is the origin and full version number of your bootloader (GRUB or other)?
We boot EFI stub-based Linux kernel 5.4 with root file system.

###### If your SHIM launches any other components, please provide further details on what is launched
Our SHIM does not launch any other components

###### How do the launched components prevent execution of unauthenticated code?
SHIM launches EFI-stub based fips-enabled Linux kernel with root file system signed by us.
CipherDrive provides relatively easy to integrity control environment for authenticating
the user and start the protected Operating System.

###### Does your SHIM load any loaders that support loading unsigned kernels (e.g. GRUB)?
No

###### What kernel are you using? Which patches does it includes to enforce Secure Boot?
Linux Kernel 5.4 with latest patches applied.

###### What changes were made since your SHIM was last signed?
This is our first request

###### What is the hash of your final SHIM binary?
(sha256) 26ee75fb5232016ccdf957559cddecb7dfb44ca358c2dc152a00c3a9c2af825e shimx64.efi
