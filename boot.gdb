target remote localhost:1234
add-symbol-file build/qemu/debug/bl2/bl2.elf
restore build/qemu/debug/fip.bin binary 0x00040000
c
