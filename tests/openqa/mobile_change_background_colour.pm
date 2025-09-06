use base 'basetest';
use strict;
use testapi;
use gnomeutils;

use constant SLOW_TYPING_SPEED => 13;

sub run {
    my $self = shift;
    select_console('user-virtio-terminal');
    assert_script_run('gsettings set org.gnome.desktop.background picture-uri ""');
    assert_script_run('gsettings set org.gnome.desktop.background primary-color "#000000"');
    assert_script_run('gsettings set org.gnome.desktop.background color-shading-type "solid"');
    select_console('x11');
    sleep 2;
    save_screenshot;
}

sub test_flags {
    return { fatal => 1 };
}

1;
