setenv bootargs console=ttyS0,115200 panic=5 rootwait fbcon=map:10 fbcon=font:VGA8x8 vt.global_cursor_default=0 root=/dev/mmcblk0p4 rootfstype=ext4 rootflags=commit=120,data=writeback,barrier=0,journal_async_commit rw quiet
load mmc 0:2 0x41000000 uImage
load mmc 0:2 0x41800000 sun8i-v3s-funkey.dtb
bootm 0x41000000 - 0x41800000