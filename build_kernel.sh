
#!/bin/bash
export PATH=$(pwd)/../PLATFORM/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin:$PATH
mkdir  out
make -C $(pwd) O=$(pwd)/out ARCH=arm CROSS_COMPILE=arm-eabi- VARIANT_DEFCONFIG=msm8916_sec_j5xlte_skt_defconfig msm8916_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig

make -C $(pwd) O=$(pwd)/out ARCH=arm CROSS_COMPILE=arm-eabi-

cp out/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage


