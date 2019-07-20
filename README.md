# TWRP Device tree for Samsung Galaxy A50

## Install dependencies

```
sudo apt install -y bison build-essential g++-multilib git make python zip openjdk-8-jdk repo screen
```

## Building instructions

```
screen
mkdir -p ~/twrp && cd ~/twrp
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync -j8
git clone https://github.com/samsung-galaxy-a50/android_device_samsung_a505fn.git device/samsung/a505fn
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_a505fn-eng
mka recoveryimage
```

*Note: Do not copy-paste the whole block, instead run the commands one-by-one!*

Your final image will be `recovery.img` in `~/twrp/out/target/product/a505fn/`. 

If you encounter any problems, create a Github issue. 

## Acknowledgements

TeamWin, OmniRom, TwrpBuilder, geiti94

Copyright (c) 2019 A505FN Project and contributors. 
