use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('gnome-disk-utility');
    assert_screen('app_gnome_disk_utility_home', 10);
    close_app;
}

1;
