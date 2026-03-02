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
https://github.com/KLC-group/shim-review/releases/tag/KLC-Group-shim-x86_64-aarch64-20260302

*******************************************************************************
### What is the SHA256 hash of your final SHIM binary?
*******************************************************************************
fd460a6b51f6fa238d87e2101cb632ff401e22f6fa6fe758546af4bc4629d8db  shimx64.efi  
0ede4a44c5df0f60427b65e447f3b142a639ddd1d92278c3186731078cf4ec1d  shimaa64.efi

*******************************************************************************
### What is the link to your previous shim review request (if any, otherwise N/A)?
*******************************************************************************
N/A

*******************************************************************************
### If no security contacts have changed since verification, what is the link to your request, where they've been verified (if any, otherwise N/A)?
*******************************************************************************
N/A
