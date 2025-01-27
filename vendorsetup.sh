deviceDir=$(gettop)/device/motorola/odessa

# Permission
chmod +x ${deviceDir}/applyPatches.sh

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches