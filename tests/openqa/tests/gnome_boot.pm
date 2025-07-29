# gnome_boot: Test that the GNOME OS disk image boots to the desktop
#
# This test should run first in every test suite that uses the HDD image.

use base 'basetest';
use strict;
use testapi;
use bootloader;

sub run {
    my $self = shift;

    bootloader_add_kernel_args(' systemd.journald.forward_to_console=1 systemd.debug-shell=1');
    assert_screen('desktop_empty', timeout => 120);
}

sub test_flags {
    return { fatal => 1 };
}

1;
