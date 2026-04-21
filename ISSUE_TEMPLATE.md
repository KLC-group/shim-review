Confirm the following are included in your repo, checking each box:

 - [x] completed README.md file with the necessary information
 - [x] shim.efi to be signed
 - [x] public portion of your certificate(s) embedded in shim (the file passed to VENDOR_CERT_FILE)
 - [X] binaries, for which hashes are added to vendor_db ( if you use vendor_db and have hashes allow-listed )
 - [X] any extra patches to shim via your own git tree or as files
 - [X] any extra patches to grub via your own git tree or as files
 - [X] build logs
 - [X] a Dockerfile to reproduce the build of the provided shim EFI binaries

*******************************************************************************
### What is the link to your tag in a repo cloned from rhboot/shim-review?
*******************************************************************************
https://github.com/KLC-group/shim-review/releases/tag/KLC-Group-shim-x86_64-aarch64-20260421

*******************************************************************************
### What is the SHA256 hash of your final SHIM binary?
*******************************************************************************
45005555eecd617f8fe263b790304d90909c77ff42e12f985861310be32d33da  shimx64.efi  
028410ed38d612d60b7f93ffcdfc46e58f6f1034a70d8cb889fe7cb5b02a3868  shimaa64.efi

*******************************************************************************
### What is the link to your previous shim review request (if any, otherwise N/A)?
*******************************************************************************
N/A

*******************************************************************************
### If no security contacts have changed since verification, what is the link to your request, where they've been verified (if any, otherwise N/A)?
*******************************************************************************
N/A
