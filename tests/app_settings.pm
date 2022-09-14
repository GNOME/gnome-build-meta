use base 'basetest';
use strict;
use testapi;
use gnomeutils;

sub run {
    start_app('gnome-control-center');
    assert_screen('app_settings_startup', 10);
    send_key('alt-f4');
}

sub test_flags {
    return { fatal => 1 };
}

1;
