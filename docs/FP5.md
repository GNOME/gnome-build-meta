# Install GNOME OS on FP5

## Installation

### Building

Build the boot.img (on aarch64):

```bash
bst build boards/fp5/boot-img.bst
bst artifact checkout boards/fp5/boot-img.bst --directory boot-img
```

Download the [aarch64 iso](https://os.gnome.org/download/latest/live-aarch64.iso) for GNOME OS.

Create the disk to flash with: (FIXME: update to-raw.sh)

```bash
sudo systemd-repart --empty=create --size=auto --sector-size=4096 --architecture=arm64 --definitions=utils/repart.raw.d/ --image=live.iso userdata.img
```

### Flashing to the phone

Unlock the phone (TODO: give the instruction):
See <https://support.fairphone.com/hc/en-us/articles/10492476238865-How-to-unlock-and-re-lock-the-bootloader>

Flash the boot image with:

```bash
fastboot flash boot boot-img/boot.img
```

(FIXME: I think we need to remove dtbo.)

Then flash the userdata image with:

```bash
fastboot flash userdata userdata.img
```

Then reboot the phone:

```bash
fastboot reboot
```

## Known bugs, workarounds

### No sound

WIP

### No display

Boot might take a lot of time. But if after 10 minutes you do not see
anything, remove the charger and the battery for a few seconds and
then retry.

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
