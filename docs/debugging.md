# Debugging

## Pre-requisites

### Disable secureboot

If you are using Secure Boot, you will need to disable it in order to enable
debugging options in the OS.

### Enable Boot Menu

When booting the machine, you can hold the Spacebar to see the persistent
Boot Menu that comes from systemd-boot. You can press `?` or `h` to see all
the available options. Pressing `e` will allow you to edit the kerenl
command line (cli) arguments (also commonly referred to as boot arguments).

## Failed boots

Here are some tips and tricks for diagnosing and debugging a failed boot.

First you should check if you can get a VT (Virtual Terminal) by using the
control-alt-f2 shortcut. You can also use f3-f6 to get additional terminals.
control-alt-f1 and control-alt-f7 are reserved for the display server.

### GDM does not start / crashes on a loop

If GDM or Shell is crashing or you don't get into a session for some reason you
can override the systemd target unit with the following kernel cli argument.

```txt
systemd.unit=multi-user.target
```

### Boot without System Extensions

If you have installed a System Extension (sysext) that is causing
issues, you can disable all the extensions with the following cli argument.

```txt
systemd.mask=systemd-sysext.service
```

### Enable Debug Shell

Enabling the debug-shell will give you a root console you can drop into. By
default, it will appear in tty9 (control + alt + f9).

```txt
systemd.debug-shell=1
```

If the system fails to get into the debug shell, you can
add the following to get a shell inside the initrd.

```txt
systemd.debug-shell=1 rd.systemd.debug-shell=1
```

You can also connect the debug shell on a serial console. (Useful
for VMs).

`ttyS0` is usually the default serial console name. Depending
on the Virtualization solution you are using, the name might be
different (ex: `ttyAMA0` or `ttyhvc0`).

```txt
systemd.debug-shell=ttyS0 rd.systemd.debug-shell=ttyS0
```

### Disable plymouth

If plymouth is causing issues for whatever reason you can disable
it in the following way.

First remove `quiet` and `splash` from the default kernel command line
arguments and then add the following:

```txt
plymouth.enable=0
```

### Enable systemd debug logging

To enable more verbose logging of systemd itself add the following.

```txt
systemd.log_level=debug systemd.log_target=console
```

You can also forward the journal to the console

```txt
systemd.journald.forward_to_console=1
```

For more detailed and systemd specific information, refer to the detailed
[documentation](https://systemd.io/DEBUGGING/).

### Disable gnome-initial-setup

You can do this by either adding `InitialSetupEnable=false` in
`/etc/gdm/custom.conf` or by adding `gnome.initial-setup=0` to the kernel
command line arguments

## Other

### Force Toggle GNOME Shell animations

Animations may be disabled in certain situations, such as when using software
rendering for Graphics, such as llvmpipe.

However its sometimes needed to be able to toggle them on demand for testing.
This can be done easily from the lookingglass interface in GNOME Shell.

Simply type `alt+f2` to bring up the command runner, then type `lg`. Then
enter the following `global.force_animations = true`

### Show the Tour dialog again

If you want to trigger the Tour dialog on the next login, you can do so by
reseting its settings key.

```bash
gsettings reset org.gnome.shell welcome-dialog-last-shown-version
```

### Inspect the Kernel Config

You can inspect the config of the kernel with the following command

```bash
zcat /proc/config.gz | less
```
