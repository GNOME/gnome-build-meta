# Install GNOME OS on OnePlus 6

## Installation

For more details, follow:
 * https://wiki.postmarketos.org/wiki/OnePlus_6_(oneplus-enchilada)
 * https://wiki.postmarketos.org/wiki/OnePlus_6_(oneplus-enchilada)/Multi_Booting_and_Custom_Partitioning#Dual_booting_pmos_with_other_uefi_based_os_(like_openbsd_,_netbsd_,_freebsd,windows,etc)_via_Renegade_Project

On the phone:
* Make sure to update you update current OS
* Enable developer mode, and enable OEM unlocking
* Unplug from USB, hold power and volume up. Wait for fasboot mode.

On a computer:
* Get fastboot from Android SDK
* Plug to the phone
* `fastboot oem unlock`

Go to https://git.codelinaro.org/linaro/qcomlt/u-boot
On the last release, get `u-boot-enchilada-boot.img`

```
fastboot flash boot u-boot-enchilada-boot.img
```

Reboot the phone. When u-boot menu shows up, select "USB mass storage".

The different logical unit number (LUN) will appear as USB mass storage disks.
One of them has a partition 17 with name `userdata`. Delete that partition.

Download the [aarch64 iso](https://os.gnome.org/download/latest/live-aarch64.iso) for GNOME OS.

In the checkout of gnome-build-meta, add file
`utils/repart.raw.d/50-root.conf` with the following content (this
file is only to fix padding issues with existing partitions, but it will be skipped):

```
[Partition]
Type=root
```

If the disk is /dev/sda, then run:

```
sudo systemd-repart --architecture=arm64 --defer-partitions=root --definitions=utils/repart.raw.d/ --dry-run=yes --image=live.iso /dev/sda
```

If that looks ok, re-run with `--dry-run=no`.

## Known bugs, workaounds

### Sound does not work

Not sure why yet.

### No camera

Still need patches not mainlined yet.

### USB host

Because it has to be switched manually throught debugfs, but this is
not accessible on GNOME OS due to lockdown, it is not possible at the point the switch to host mode.

### No modem

Restart ModemManager.

### No SIM

```
sudo qmicli -d qrtr://0 --uim-get-card-status
```

Look for the application ID. Then use it in:

```
sudo qmicli -d qrtr://0 --uim-change-provisioning-session='slot=1,activate=yes,session-type=primary-gw-provisioning,aid=XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX'
```

You can create unit in `/etc/systemd/system` to run this command. You
should probably make it start after `tqftpserv.service`.

For example

```
[Unit]
After=tqftpserv.service
Before=ModemManager.service
StartLimitBurst=10

[Service]
Type=oneshot
RemainAfterExit=yes
ExecStart=qmicli -d qrtr://0 --uim-change-provisioning-session='slot=1,activate=yes,session-type=primary-gw-provisioning,aid=12:34:56:78:90:AB:CD:EF:01:23:45:67'
Restart=on-failure
RestartSec=1s

[Install]
WantedBy=multi-user.target
```

### SMS and calls.

Install Chats (aka Chatty) and Calls from flathub. RCS messages do not
work, if you have multiple SIM on the same phone number, you might not
get all messages.

(Calls were not yet tested).

### Modem wants authentication when starting

Something to fix, the polkit configuration is probably wrong for
ModemManager.

### Selecting time zone in GNOME Initial Setup

Right now, the time zone selector for `gnome-initial-setup` isn't 
responsive, and it's not possible to maximize, resize, or move the 
window off-screen. When running GNOME OS on a phone, this means there is no 
way to press the "Next" button. As a workaround, select your time zone, press 
"Previous", then "Next", then press Enter on the on-screen keyboard.
