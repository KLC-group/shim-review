This repo is for review of requests for signing shim.  To create a request for review:

- clone this repo
- edit the template below
- add the shim.efi to be signed
- add build logs
- commit all of that
- tag it with a tag of the form "myorg-shim-arch-YYYYMMDD"
- push that to github
- file an issue at https://github.com/rhboot/shim-review/issues with a link to your branch

Note that we really only have experience with using grub2 on Linux, so asking
us to endorse anything else for signing is going to require some convincing on
your part.

Here's the template:

-------------------------------------------------------------------------------
What organization or people are asking to have this signed:
-------------------------------------------------------------------------------
KLC Group LLC, 
https://klc-group.com, 
https://CipherDriveOne.com 

-------------------------------------------------------------------------------
What product or service is this for:
-------------------------------------------------------------------------------
CipherDriveOne is a Pre-boot Authentication and Key Management software which
when combined with a Self-Encrypting Drive (SED) provides a powerful 
“data-at-rest” encryption solution. Users must successfully authenticate to 
CipherDrive before keys are sent to the connected Opal2 compatible SED drive.
CipherDrive combined with the SED drive protects host OS and all stored data on
local storage from unauthorized access, loss, and exposure and makes it easy to
comply with privacy and breach regulations.


-------------------------------------------------------------------------------
What's the justification that this really does need to be signed for the whole world to be able to boot it:
-------------------------------------------------------------------------------
CipherDrive starts when the computer boots and authenticates users at pre-boot time.
In order to provide the trust that CipherDrive software has not been tampered with
(e.g. “evil maid issue”), CipherDrive must run with Secure Boot on. When combined
with Secure Boot, CipherDrive provides authorized users with boot level trust in a
relatively easy to integrity control environment before the computer can start the
operating system. CipherDrive is in the process of being Common Criteria certified.

-------------------------------------------------------------------------------
Who is the primary contact for security updates, etc.
-------------------------------------------------------------------------------
- Name: Kurt Lennartsson
- Position: Managing Partner
- Email address: kurt@klc-group.com
- PGP: 0D06 A67F FF1E 4F2F FED1  3F1C 3309 C219 7460 1A24

-------------------------------------------------------------------------------
Who is the secondary contact for security updates, etc.
-------------------------------------------------------------------------------
- Name: Warren W. Robbins
- Position: Head of Certifications
- Email address: warren@klc-group.com
- PGP: BD88 B84D 3D27 7FC8 2A76  FCC5 7117 4D1C D177 573F

-------------------------------------------------------------------------------
What upstream shim tag is this starting from:
-------------------------------------------------------------------------------
https://github.com/rhboot/shim/tree/15

-------------------------------------------------------------------------------
URL for a repo that contains the exact code which was built to get this binary:
-------------------------------------------------------------------------------
https://github.com/KLC-group/shim-review/tree/KLC-Group-shim-20200912

-------------------------------------------------------------------------------
What patches are being applied and why:
-------------------------------------------------------------------------------
No additional patches are applied.

-------------------------------------------------------------------------------
What OS and toolchain must we use to reproduce this build?  Include where to find it, etc.  We're going to try to reproduce your build as close as possible to verify that it's really a build of the source tree you tell us it is, so these need to be fairly thorough. At the very least include the specific versions of gcc, binutils, and gnu-efi which were used, and where to find those binaries.
-------------------------------------------------------------------------------
This repo contains the Dockerfile and app.sh script we use to build shim:
https://github.com/KLC-group/shim-review/tree/KLC-Group-shim-20200912

-------------------------------------------------------------------------------
Which files in this repo are the logs for your build?   This should include logs for creating the buildroots, applying patches, doing the build, creating the archives, etc.
-------------------------------------------------------------------------------
https://github.com/KLC-group/shim-review/tree/KLC-Group-shim-20200912/build.log

-------------------------------------------------------------------------------
Add any additional information you think we may need to validate this shim
-------------------------------------------------------------------------------
The submitted efi binary is built from shim 15 with no modifications
