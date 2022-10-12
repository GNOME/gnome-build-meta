use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('gnome-totem');
    assert_screen('app_gnome_totem_home', 10);
    close_app;
}

1;
