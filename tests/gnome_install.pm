use base 'basetest';
use strict;
use testapi;
use bootloader;

sub run {
    my $self = shift;

    bootloader_add_kernel_args(' console=ttyS0 systemd.journald.forward_to_console=1');

    assert_and_click('gnome_install_1', timeout => 120, button => 'left');
    assert_and_click('gnome_install_disk', timeout => 10, button => 'left');
    assert_and_click('gnome_install_disk2', timeout => 10, button => 'left');
    assert_screen('gnome_install_reformatting1', timeout => 120);
    assert_screen('gnome_install_complete', timeout => 180);
    eject_cd;
    power('reset');
}

sub test_flags {
    return { fatal => 1 };
}

1;
