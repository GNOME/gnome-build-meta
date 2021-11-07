use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;
    assert_and_click('gnome_desktop_tour', timeout => 60, 'left');
    assert_screen('gnome_desktop_desktop', 60);

    send_key("alt-f2", 1);

    type_string("poweroff\n");
    assert_shutdown(180);
}

sub test_flags {
    return { fatal => 1 };
}

1;
