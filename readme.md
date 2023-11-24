# How to Build
 > sh update_uboot.sh (if need)
 > sh build.sh

# How to Run
 run this firstly:
 > sh qemu-run.sh
 then open another terminal and run following:
 > sh gdb-run.sh  # connect to qemu and running!

# describs for shell scriptors
  - build.sh     -->  compile bl1 bl2 bl31 and wrap  bl2 with uboot(bl33)
  - update_uboot -->  compile uboot and copy image to atf root path
  - qemu-run.sh  -->  run qemu to simulate a cortex-a53 mechine and specify a bios
		      file with bl1.bin. and define a virtual harddisk with fip.bin
	- clear_falloc.sh --> clear qemu running error
  - gdb-run.sh   -->  run gdb to connect and debug the atf. load the symbols of the bl1
	- boot.gdb        --> automatical commands for gdb. load the symbols of the bl2
	                      and restore fip.bin from harddisk to memory address 0x00040000
