export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
#make PLAT=qemu all DEBUG=1
CFLAGS=' -O0 -gdwarf-2' #optimize level 0 and generate debug dwarf infomation for gdb
make PLAT=qemu BL33=u-boot.bin all fip DEBUG=1 LOG_LEVEL=50  # fip = bl2 + bl33(u-boot.bin)
