use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

my $form_factor_postfix = $testapi::form_factor_postfix;

sub run {
    start_app('simple-scan');
    if ($form_factor_postfix eq '_mobile') {
        resize_app_to_mobile;
    }
    assert_screen('app_simple_scan_home'.$form_factor_postfix, 10);
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
