use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

my $form_factor_postfix = $testapi::form_factor_postfix;

sub run {
    start_app('nautilus');
    if ($form_factor_postfix eq '_mobile') {
        resize_app_to_mobile;
    }
    assert_screen('app_nautilus_home'.$form_factor_postfix, 10);
    send_key('ctrl-1');
    assert_screen('app_nautilus_list_view'.$form_factor_postfix, 2);
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
