# uxPlay-debian-install

UxPlay installscript for debian (raspian).

## Run it

```
git clone https://github.com/Kraego/uxPlay-debian-install.git
cd uxPlay-debian-install
chmod +x uxplay_install.sh
sudo ./uxplay_install.sh   
```

## About
This script:
* installs the needed build environment (via apt)
* clones the git repo of uxplay (https://github.com/antimof/UxPlay)
* builds uxplay from source
* installs uxplay
* installs the packages to run uxplay

Tested on `raspian - bookworm 64bit and bullseye 32bit`: screen mirroring and audio working
