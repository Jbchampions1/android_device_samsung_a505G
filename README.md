# TWRP Device tree for Alcatel 5059D

## Building instructions

```
mkdir -p ~/twrp && cd ~/twrp
repo init --depth=1 -u https://github.com/samsung-galaxy-a50/platform_manifest_twrp_omni.git -b twrp-8.1
repo sync
git clone https://github.com/samsung-galaxy-a50/android_device_samsung_a505fn.git device/alcatel/5059d
git clone https://github.com/samsung-galaxy-a50/android_device_generic_twrpbuilder.git device/generic/twrpbuilder
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_a505fn-eng
mka recoveryimage
```

Your final image will be `recovery.img` in `~/twrp/out/target/product/a505fn/`. 

If you encounter any problems, create a Github issue. 

## Acknowledgements

TeamWin, OmniRom, TwrpBuilder, geiti94

Copyright (c) 2018 A505FN Project and contributors. 
