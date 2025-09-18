# Virtualization in the GNOME openQA tests

When you run the end-to-end tests, openQA creates a x86_64 virtual machine
using [QEMU](https://wiki.archlinux.org/title/QEMU) and [KVM](https://wiki.archlinux.org/title/KVM).

Virtual machines can be very slow if your computer has to emulate every detail
of an x86_64 CPU in software. However, if your computer has an x86_64 CPU that
is less than 10 years old, it should support *hardware virtualization*, which
allows creating virtual machines that run on the real CPU. On Linux, the hardware
virtualization is accessed through a subsystem named *KVM*.

You might have the host Linux OS running in a virtual machine rather than on
bare metal. This approach is not recommended - you will have better results if
you dual boot Linux on your computer. Some hypervisors do support *nested
virtualization*, where a VM can access hardware virtualization from inside
another VM, and in this case it *may* be possible to run the openQA tests
efficiently.

## Troubleshooting on the host

These steps are taken from the Arch Linux wiki: ["Checking support for KVM"](https://wiki.archlinux.org/title/KVM#Hardware_support).

1. Check and enable hardware support. Run this command in a terminal:

        LC_ALL=C lscpu | grep Virtualization

    You should see a line similar to this in the output:

        Virtualization:                     VT-x

    If you don't see any output, hardware virtualization is missing. Nearly all
    x86_64 processors since around 2013 support this feature but some laptop
    vendors choose to disable it by default.

    You should be able to find instructions for enabling it if you search
    online for the make and model of your laptop or mainboard plus "enable hardware
    virtualization". You'll likely need to reboot the laptop, and hold down a
    specific key to enter the UEFI or BIOS setup menu, and configure the
    setting there.

2. Check kernel support. Run this command in a terminal:

        lsmod | grep kvm

    You should see some modules listed including 'kvm'. If you don't
    see anything, your OS probably didn't built Linux with KVM support
    enabled. Try the latest version of Fedora or Ubuntu instead.

### Troubleshooting inside containers

We use a container to run openQA tests and the container tool needs to pass
`/dev/kvm` in from the host.

Podman 3.x is known to not do this. Make sure you have Podman 4.x - run `podman
--version` to check the version. Ubuntu 23.04 has a known good version of Podman,
while Ubuntu 22.04 is too old. Make sure you're using the latest stable version of
Fedora or Ubuntu to avoid issues.

You can test if `/dev/kvm` is available in privileged containers by running:

    podman run --privileged -i -t -- alpine:latest ls -l /dev/kvm

This will show the `/dev/kvm` file if it exists inside the container.
