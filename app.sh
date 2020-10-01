#!/bin/sh

apt-get install tar -y
apt-get install wget -y
wget https://github.com/rhboot/shim/archive/15.tar.gz
tar -xvf 15.tar.gz
cd /shim-15/
make  EFI_INCLUDE="/usr/include/efi" EFI_PATH="/usr/lib" LIBDIR="$/usr/lib" DEFAULT_LOADER="\\\\\\KLC\\\\\\CipherDrivex64.EFI" VENDOR_CERT_FILE="/KLC_Group_LLC.der"

echo ""
echo "Hash of Binary -:"
openssl dgst -sha256 /shim-15/shimx64.efi

