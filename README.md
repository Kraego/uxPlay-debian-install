# uxPlay-debian-install

UxPlay installscript for debian (raspian).

## Run it

```
git clone https://github.com/Kraego/uxPlay-debian-install.git
cd uxPlay-debian-install
sudo ./uxplay_install.sh   
```

## About
This script:
* installs the needed build environment (via apt)
* clones the git repo of uxplay (https://github.com/antimof/UxPlay)
* builds uxplay from source
* installs uxplay
* installs the packages to run uxplay

Tested on `raspian - bookworm 64bit Image`: screen mirroring and audio working
