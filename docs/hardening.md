# Hardening of a GNOME OS installation

GNOME OS tries to be secure, but also not to be a hassle for non developers and non tech saavy people. So some of the security features are not fully enabled. And those who need it need to do a bit of extra configuration.

## uinput, hidraw

Because of Steam, user has access to `uinput` which can create new input devices, like a keyboard. Applications that get access to `/dev/uinput` could inject commands into a terminal, and hitchhike a `sudo` session.

To disable it:
```
ln -s /dev/null /etc/udev/rules.d/60-steam-input.rules
```

Some hidraw devices are also given access to users. Those are less of an issue. These are in rules:
 * `70-gnomeos-hidraw.rules`
 * `60-steam-vr.rules`

## pcrlock

By default, we do not lock much with pcrlock since it can cause issues booting for casual users messing with BIOS configuration. But if you want to have a safe system you should lock those:

```
systemctl enable systemd-pcrlock-firmware-code.service
systemctl enable systemd-pcrlock-firmware-config.service
systemctl enable systemd-pcrlock-secureboot-authority.service
systemctl enable systemd-pcrlock-secureboot-policy.service
```

## Secure boot

In combination with pcrlock, secure boot can lock a bit further. Like which certificate is used for shim. If running in secure boot setup mode, the boot loader will propose some set keys: default and private.

* default: These keys will allow Microsoft signed firmware. This is useful for PCIe cards that contains some firmware to be loaded during UEFI boot. That will allow you to still see the BIOS configuration on your screen.
* private: This does not contain Microsoft certificates. This might brick your machine since some important pieces of firmware might not load anymore. So be careful.

Note that some manufacturer have extra certificates other than Microsoft, for example for firmware update.

To enter setup mode, for most BIOS, it consists of enabling secure boot and removing all keys.

## Firewall

The default firewall zone is "lax". It only blocks some of the system ports. This is not enough in general. You can set the zone of your connection to a stricter zone like "public", "work", or "home". For example:

```
nmcli connection modify "My Connection" connection.zone "public"
```

You can also change the zone assigned by default on new network connections:

```
firewall-cmd --set-default-zone=public
```

## Setting a PIN

TPM backed encryption is not totally proof to evil maid attack, though it is still difficult. And there is no way to make it totally proof without a second device. We can only add more measures that makes attacks more difficult. One of them is adding a PIN.

You can re-enroll the TPM with a pin with this command:

```
sudo systemd-cryptenroll --wipe-slot=tpm2 --tpm2-with-pin=true --tpm2-device=auto --tpm2-pcrs='' /dev/disk/by-partlabel/root
```

## Dictionary attack protection

GNOME OS does not yet use dictionary attack protection on TPM.

