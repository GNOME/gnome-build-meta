use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;
    assert_and_click('gnome_install_1', timeout => 120, 'left');
    assert_and_click('gnome_install_disk', 'left', 10);
    assert_and_click('gnome_install_disk2', 'left', 10);
    assert_screen('gnome_install_reformatting1', 120);
    assert_screen('gnome_install_complete', 120);
    eject_cd;
    power('reset');
}

sub test_flags {
    return { fatal => 1 };
}

1;
