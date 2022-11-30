use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    assert_screen('gnome_iso_bootloader', timeout => 30);
    wait_screen_change { send_key('e') };
    send_key('end');
    type_string(' console=ttyS0');
    type_string(' systemd.journald.forward_to_console=1');
    save_screenshot;
    send_key('ret');

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
