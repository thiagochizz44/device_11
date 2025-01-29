deviceDir=$(gettop)/device/motorola/odessa

# Clone Proton
git clone https://gitlab.com/LeCmnGend/proton-clang -b clang-18 --depth=1 prebuilts/clang/host/linux-x86/clang-proton

# Permission
chmod +x ${deviceDir}/applyPatches.sh

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches