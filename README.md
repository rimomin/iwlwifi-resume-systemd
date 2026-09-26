# iwlwifi-resume-systemd
This systemd service reload Intel Wireless card module iwlwifi after OS resume from suspend because Wi-Fi is desabled after resume if not. 

## How to build deb package from source
1. Install dpkg-deb command
2. Run build-deb.sh such as `./build-deb.sh` .
4. Then deb package is made in deb directory.

## How to install deb package
Execute follow command when iwlwifi-resume-systemd_1.0.0_all.deb is in deb directory.
``` shell
cd deb/
sudo dpkg -i iwlwifi-resume-systemd_1.0.0_all.deb
```
