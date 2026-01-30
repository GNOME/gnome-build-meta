# Install GNOME OS on an Android phone

## Installation

### Supported phones

This has been only tested on the OnePlus 6 and the Fairphone 5. It may work on
other phones that are supported by mainline linux kernel.

### Downloading

Download the u-boot build for your device from the
[Tauchgang project](https://gitlab.postmarketos.org/tauchgang/u-boot/). There
are no stable releases yet, download the build for your device from the latest
pipeline

Download the GNOME OS [aarch64 ISO](https://os.gnome.org/download/latest/gnome_os-aarch64.iso)

Create the disk to flash with: (FIXME: update to-raw.sh)

```bash
sudo systemd-repart --empty=create --size=auto --sector-size=4096 --architecture=arm64 --definitions=utils/repart.raw.d/ --image=gnome_os-aarch64.iso userdata.img
```

(replace `gnome_os-aarch64.iso` with the actual filename)

### Flashing to the phone

You first need to unlock the bootloader. The
[postmarketOS wiki](https://wiki.postmarketos.org/wiki/Devices) has nice
instructions on how to unlock the bootloader.

You need to clear the dtbo partition, to allow for booting non-Android systems.

```bash
fastboot erase dtbo
```

flash the boot image with:

```bash
fastboot flash boot boot.img
```

Then flash the userdata image with:

```bash
fastboot flash userdata userdata.img
```

Then reboot the phone:

```bash
fastboot reboot
```

## Known bugs, workarounds

### Selecting time zone in GNOME Initial Setup

#### Cannot choose a timezone via the textbox

Clicking on the map to select your timezone, should be working instead.

#### "Next" button is off-screen

Moving the window to the left, should expose the "Next" button. Alternatively,
select your time zone, press "Previous", then "Next", then press Enter on the
on-screen keyboard.

### Sound does not work

Not sure why yet.

### No modem

For the modem to still work after suspend without restarting ModemManager,
you need to use `--test-quick-suspend-resume` to its command line. For this,
run `systemctl edit ModemManager.service` and write:

```ini
[Service]
ExecStart=
ExecStart=/usr/bin/ModemManager --test-quick-suspend-resume
```

If the modem does not appear in other cases, maybe try to restart
ModemManager.

### No SIM

```bash
sudo qmicli -d qrtr://0 --uim-get-card-status
```

Look for the application ID. Then use it in:

```bash
sudo qmicli -d qrtr://0 --uim-change-provisioning-session='slot=1,activate=yes,session-type=primary-gw-provisioning,aid=XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX:XX'
```

You can create unit in `/etc/systemd/system` to run this command. You
should probably make it start after `tqftpserv.service`.

For example

```ini
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

### SMS and calls

Install Chats (aka Chatty) and Calls from flathub. RCS messages do not work, if
you have multiple SIM on the same phone number, you might not get all messages.

(Calls were not yet tested).

### No camera

Still needs patches that are not mainlined yet.

### USB host

It has to be switched manually through debugfs, which is not accessible on GNOME
OS due to lockdown. Thus it is not possible to switch to host mode.

### Modem wants authentication when starting

Something to fix, the polkit configuration is probably wrong for ModemManager.

### Device crashes when the screen turns off

Some devices periodically crash when the screen turns off (either due to
inactivity or when suspending). The notification LED lights up and turns solid
white. After a bit, the phone enters "QUALCOMM CrashDump" mode.

### wifi connection keeps dropping

Occasionally, the wifi chipset restarts and briefly drops the current wifi
connection. Actively using the connection (e.g: ssh connection, downloading
sth.) seems to increase the frequency of disconnects. Bluetooth connections do
not drop at all.

### plymouth does not work

Plymouth tries to launch, renders incorrectly and exits (first few seconds of
bootup). Does not affect the boot process.

### RTC clock is incorrect

RTC clock shows current time as 'Epoch + time since GnomeOS was installed'.

```bash
[kawaiicvnt@retard ~]$ timedatectl status
        Local time: Wed 2026-01-07 21:00:01 EET
    Universal time: Wed 2026-01-07 19:00:01 UTC # Actual date
          RTC time: Fri 1970-01-02 22:45:29     # Epoch + time since install
```

RTC time is not lost between reboots, but there appears to be no RTC available
when trying to set the time manually.
