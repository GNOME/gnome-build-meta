use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    # Pass an image to Loupe to test image loaders a bit.
    start_app('loupe /usr/share/pixmaps/gnome-boot-logo.png');
    assert_screen('app_loupe_home', 10);
    close_app;
}

1;
