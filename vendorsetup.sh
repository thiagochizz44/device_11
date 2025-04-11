deviceDir=$(gettop)/device/motorola/odessa

# Proton AOSP Removes 
rm -rf external/zlib
rm -rf external/zlib-ng
rm -rf external/jemalloc_new

# Clones ProtonAOSP
git clone https://github.com/ProtonAOSP/android_external_zlib-ng.git -b rvc external/zlib-ng

git clone https://github.com/ProtonAOSP/android_external_jemalloc_new.git -b rvc external/jemalloc_new

# Permission
chmod +x ${deviceDir}/applyPatches.sh

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches
