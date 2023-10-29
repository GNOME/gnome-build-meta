use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

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
