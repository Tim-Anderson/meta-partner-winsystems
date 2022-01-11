setenv fdt_file imx8mq-itx-p-c444.dtb
echo "Using freescale_${fdt_file}"

# Default boot type and device
setenv bootlimit 3
setenv devtype mmc
setenv devnum ${emmc_dev}
setenv bootpart 1
setenv rootpart 2

setenv fdt_file_final freescale_${fdt_file}
setenv fit_addr ${initrd_addr}

# Boot firmware updates
setenv bootloader 42
setenv bootloader2 300
setenv bootloader_s 1042
setenv bootloader2_s 1300
setenv bootloader_image "imx-boot"
setenv bootloader_s_image "imx-boot-nohdmi"
setenv bootloader2_image "u-boot.itb"
setenv bootloader2_s_image ${bootloader2_image}
setenv uboot_hwpart 1

@@INCLUDE_COMMON_IMX@@
@@INCLUDE_COMMON@@
