# Hardening of a GNOME OS installation

GNOME OS tries to be secure, but also not to be a hassle for non developers and non tech savy people. So some of the security features are not fully enabled. And those who need it need to do a bit of extra configuration.

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
python3 -c "import secrets, string; print(''.join(secrets.choice(string.ascii_letters + string.digits) for _ in range(32)))" | run0 tee /etc/credstore/tpm.lockout
run0 tpm2_changeauth -c lockout file:/etc/credstore/tpm.lockout
```

Or if it set and you know the value, you can changed it with:

```bash
run0 tpm2_changeauth -c lockout -p myoldpassword file:/etc/credstore/tpm.lockout
```

#### Configuring the dictionary attack lockout

You can specify:

* the number of tries with `-n`
* the duration it takes to recovery from a failed reconfiguration with `-l`
* the duration it takes to be able to boot your system again after being locked with `-t`

For example if you want to have 10 minutes timeouts and 32 tries:

```bash
run0 tpm2_dictionarylockout -s -n 32 -t 600 -l 600 -p file:/etc/credstore/tpm.lockout
```

Do not make time too long or the number too stricts. It might make your system trip more often, and very long to recover. For indication the default values are usually 32, 1000, 1000.

#### Clear lockout on reboot

If you plan to reboot faster than the timeout you gave, and the number of tries is small, you should clear the lockout on successful boots. You also probably want to clear the lockout automatically after using recovery key.

For that, add in `/etc/systemd/system/clear-lockout.service`:

```systemd
[Service]
Type=oneshot
ExecStart=tpm2_dictionarylockout -c -p file:${CREDENTIALS_DIRECTORY}/tpm.lockout
ImportCredential=tpm.lockout

[Install]
WantedBy=multi-user.target
```

Then enable it.

```bash
systemctl enable clear-lockout.service
```

### Enroll a pin on the TPM

By default we encrypt your hard drive if there's a tpm2 device available. The long term plan is to use systemd homed to encrypt user data, but until then you can replace the unattended luks decryption with a tpm2+pin key in luks using the following command.

```bash
sudo systemd-cryptenroll --wipe-slot=tpm2 --tpm2-with-pin=true --tpm2-device=auto /dev/disk/by-partlabel/root
```

### Enabling secure boot

You can enable secure boot by enrolling the keys we provide.

> [!warning]
> This might soft brick your computer if you do not know what you are doing. And even if done correctly, this might prevent firmware updates in some cases.

* Go in your firmware (BIOS) settings and find the Secure Boot options
* Select "setup mode" or "clear keys". You might need to enable Secure Boot for the option to be available
* Save your changes and reboot
* The boot loader will provide two new entries. Select "default". This contains also the Microsoft keys which means it will allow firmware to be loaded from option ROMs. "private" will forbid those, which is a bad idea if you are not sure if you have option ROMs
* Wait 15 seconds.

Once you have enabled secure boot, you can lock the PCRs to that state with:

```bash
systemctl enable systemd-pcrlock-secureboot-authority.service
systemctl enable systemd-pcrlock-secureboot-policy.service
```

### Locking firmware to PCRs

You can lock the PCRs to the firmware with the following:

```bash
systemctl enable systemd-pcrlock-firmware-code.service
systemctl enable systemd-pcrlock-firmware-config.service
```

This will disallow firmware update.

## uinput, hidraw

Because of Steam, user has access to `uinput` which can create new input devices, like a keyboard. Applications that get access to `/dev/uinput` could inject commands into a terminal, and hitchhike a `sudo` session.

To disable it:

```bash
ln -s /dev/null /etc/udev/rules.d/60-steam-input.rules
```

Some hidraw devices are also given access to users. Those are less of an issue. These are in rules:

* `70-gnomeos-hidraw.rules`
* `60-steam-vr.rules`

## Firewall

The default firewall zone is "lax". It only blocks some of the system ports. This is not enough in general. You can set the zone of your connection to a stricter zone like "public", "work", or "home". For example:

```bash
nmcli connection modify "My Connection" connection.zone "public"
```

You can also change the zone assigned by default on new network connections:

```bash
firewall-cmd --set-default-zone=public
```
