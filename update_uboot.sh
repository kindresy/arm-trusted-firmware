#
# rebuild u-boot.bin and copy from uboot directory to current place
#

cd ../../uboot/u-boot/
sh build.sh # execute uboot build --> u-boot.bin
cd -        # back to atf root(.)
cp ../../uboot/u-boot/u-boot.bin .
