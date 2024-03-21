use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    assert_and_click('gnome_desktop_tour', timeout => 120, button => 'left');
    assert_screen('gnome_desktop_desktop', 20);
}

sub test_flags {
    return { fatal => 1 };
}

1;
