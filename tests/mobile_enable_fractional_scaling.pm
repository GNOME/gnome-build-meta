use base 'basetest';
use strict;
use testapi;
use gnomeutils;

use constant SLOW_TYPING_SPEED => 13;

sub run {
    my $self = shift;
    select_console('user-virtio-terminal');
    assert_script_run('gsettings set org.gnome.desktop.interface scaling-factor 2', timeout => 600);
    assert_script_run('gsettings set org.gnome.desktop.interface text-scaling-factor 2', timeout => 600);
    select_console('x11');
    sleep 5;
    save_screenshot;
}

sub test_flags {
    return { fatal => 1 };
}

1;
