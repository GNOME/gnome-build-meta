# User Guide

## Installing software

GNOME OS does not have a traditional package manager, but you can install software in a variety of ways. Graphical applications are available via flatpak and are easily installed from GNOME Software. Podman, toolbox and distrobox are also available.

You can also use snap after enabling it and rebooting:

```bash
updatectl enable --now snapd apparmor
```

## Securing the disk encryption

GNOME OS will automatically encrypt the root filesystem with the TPM if this is found. However the default encryption configuration is lax in order to avoid friction. Users that want proper full disk encryption (for example for work computers) need to harden their installation. They can either:

* Set a PIN and enable dictionary attack protection.
* Enable secure boot and eventually lock PCRs to the firmware.

It is of course possible to use both approaches. But only one is needed.

> [!note]
> At this point, homed is not used by default, and we are not encrypting user accounts separatly.

### Setting the dictionary attack lockout

In order to protect your PIN from brute force attacks, you should enable dictionary lockout on your TPM. This is not yet handled by systemd.

If you fail any of the setup commands, you might need to wait 24 hours or clear your TPM.

> [!caution]
> Trying to change the configuration of the lockout using the wrong authorization will trip the lockout. And you will need to wait 24 hours or clear the TPM. So be sure to use the right authorization value to avoid losing time.

#### Set an authorization value

The authorization value will be used to reconfigure the lockout
hierachy. If you do not set it, an attacker could just disable the
protection.

First check if there is an authorization value that was set by another
operating system.

```bash
run0 tpm2_getcap properties-variable
```

Is `lockoutAuthSet` 1? If so and you do not know the authorization value, you should clear your TPM. And then re-enroll the TPM keys.

If it is not set, you can set one with:

```bash
run0 tpm2_changeauth -c lockout mypassword
```

Or if it set and you know the value, you can changed it with:

```bash
run0 tpm2_changeauth -c lockout -p myoldpassword mynewpassword
```

#### Configuring the dictionary attack lockout

You can specify:

* the number of tries with `-n`
* the duration it takes to recovery from a failed reconfiguration with `-l`
* the duration it takes to be able to boot your system again after being locked with `-t`

For example if you want to have 10 minutes timeouts and 32 tries:

```bash
run0 tpm2_dictionarylockout -s -n 32 -t 600 -l 600 -p mypassword
```

Do not make time too long or the number too stricts. It might make your system trip more often, and very long to recover. For indication the default values are usually 32, 1000, 1000.

#### Clear lockout on reboot

If you plan to reboot faster than the timeout you gave, and the number of tries is small, you should clear the lockout on successful boots. You also probably want to clear the lockout automatically after using recovery key.

For that, add in `/etc/systemd/systemd/clear-lockout.service`:

```systemd
[Service]
Type=oneshot
ExecStart=tpm2_dictionarylockout -c -p file:${CREDENTIALS_DIRECTORY}/tpm.lockout
ImportCredential=tpm.lockout

[Install]
WantedBy=multi-user.target
```

Then store the credential and enable it.

```bash
echo -n "mypassword" | run0 tee /etc/credstore/tpm.lockout
systemctl enable clear-lockout.service
```

### Enroll the pin on TPM2

By default we encrypt your hard drive if there's a tpm2 device available. The long term plan is to use systemd homed to encrypt user data, but until then you can replace the unattended luks decryption with a tpm2+pin key in luks using the following command.

```bash
sudo systemd-cryptenroll --wipe-slot=tpm2 --tpm2-with-pin=true --tpm2-device=auto /dev/disk/by-partlabel/root
```

### Enabling secure boot

You can enable secure boot by enrolling the keys we provide.

> [!warning]
> This might soft brick your computer if you do not know what you are doing. And even if done correctly, this might prevent from firmware updates in some cases.

* Go in the firmware (BIOS) menu, and select "setup mode" or "clear keys". "Setup mode" is secure boot enable with no key enrolleds. So it is equivalent.
* The boot loader, will provide two new entries. Select "default". This contains also the Microsoft keys, that means it will allow firmware to be loaded from option ROMs. "private" will forbid and is a bad idea if you are not sure if you have option ROMs.
* Wait 15 seconds.

Once you have enabled secure boot, you can lock the PCRs to that state with:

```bash
systemctl enable systemd-pcrlock-secureboot-authority.service
systemctl enable systemd-pcrlock-secureboot-policy.service
```

### Locking firmware to PCRs

You can lock the PCRs to the firmware with the following:

```bash
systemctl enable systemd-pcrlock-secureboot-authority.service
systemctl enable systemd-pcrlock-secureboot-policy.service
```

This will disallow firmware update.

## Update via command line

System updates are handled by systemd-sysupdate. GNOME Software should work just fine for that, but you can also do updates via terminal like so:

```bash
updatectl update
```

After that you can directly reboot into the new image.

## Use an older version of the operating system

There are always 2 versions of the operating system kept installed. If you need to use an older version, you can choose an older version from the menu at start-up.

## Install an older version of the operating system

You can install an even older version if it is still available to download using updatectl, for example version `nightly.1234`:

```bash
updatectl update host@nightly.1234
```

List all available versions for your system:

```bash
updatectl list host
```

## Enable development tooling and utilities

If you want to install the development toolchain of GNOME OS you can do so by enabling the following System Extensions. These include compilers, headers, along with common utilities used for GNOME development, such as flatpak-builder, GNOME Builder and so on.

```bash
sudo updatectl enable devel --now
```

## Enable the Nvidia driver

GNOME OS ships with the upstream open source drivers for Nvidia graphics cards, which are enough for light use but have subpar performance and don't support features like CUDA. If you want the best performance or need to use features like CUDA and OptiX, you should enable the Nvidia driver extension like so:

```bash
sudo updatectl enable nvidia-driver --now
```

After rebooting, you should be using the Nvidia driver.

> [!note]
> This extension only supports RTX 1600/2000 series or newer cards.

## Boot into older versions

If an update breaks something, you can always boot into an older version. You can do this quickly by pressing any key during boot to enter the menu, and then choosing a different version from the list.

## Updating firmware

Before applying a firmware update, you need to unlock the firmware PCR values. This will automatically recreate a pcrlock policy on next boot

```bash
sudo /usr/lib/systemd/systemd-pcrlock unlock-firmware-code
sudo /usr/lib/systemd/systemd-pcrlock unlock-firmware-config
```

## Re-enroll tpm2 if needed

If you update your firmware or reset the uefi settings, you might be asked to manually unlock your hard drive, instead of happening automatically. This is because the state of the machine has changed without the OS knowing about it. In such case you will need to re-enroll the tpm2 values for the updated firmware keys. (We are exploring ways to make this easier in the future)

```bash
sudo /usr/lib/systemd/systemd-pcrlock remove-policy
sudo /usr/lib/systemd/systemd-pcrlock make-policy --location=770 --pcr=0+1+2+3+4+5+7+11+14+15
sudo systemd-cryptenroll --wipe-slot=tpm2 --tpm2-device=auto /dev/disk/by-partlabel/root
```

## Troubleshooting

See [our debugging guide](debugging.md) for common troubleshooting steps.
