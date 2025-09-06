use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

my $form_factor_postfix = $testapi::form_factor_postfix;

sub run {
    # Pass an image to Loupe to test image loaders a bit.
    start_app('loupe /usr/share/pixmaps/gnome-boot-logo.png');
    if ($form_factor_postfix eq '_mobile') {
        resize_app_to_mobile;
    }
    assert_screen('app_loupe_home'.$form_factor_postfix, 10);
    close_app;
}

1;
