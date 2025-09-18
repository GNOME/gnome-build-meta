use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    assert_and_click('gnome_login_select_user', timeout => 120, button => 'left');
    assert_screen('gnome_login_password');
    type_string($testapi::password);
    send_key('ret');
    assert_screen('gnome_login_desktop');
}

sub test_flags {
    return { fatal => 1 };
}

1;
