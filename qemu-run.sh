sh clear_falloc.sh
sudo qemu-system-aarch64 \
	-nographic \
	-machine virt,secure=on -cpu cortex-a53 \
	-smp 2 \
	-m 2048 \
	-d unimp \
	-bios build/qemu/debug/bl1.bin \
	-drive if=pflash,format=raw,index=1,file=build/qemu/debug/fip.bin \
	-semihosting-config enable=on,target=native -s -S
