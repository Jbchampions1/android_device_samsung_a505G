# TWRP Device tree for Samsung Galaxy A50

## Install dependencies

```
sudo apt install -y bison build-essential g++-multilib git make python zip openjdk-8-jdk repo screen
```

## Building instructions

```
screen
mkdir -p ~/twrp && cd ~/twrp
repo init --depth=1 -u https://github.com/samsung-galaxy-a50/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync
git clone https://github.com/samsung-galaxy-a50/android_device_samsung_a505fn.git device/alcatel/5059d
git clone https://github.com/samsung-galaxy-a50/android_device_generic_twrpbuilder.git device/generic/twrpbuilder
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
