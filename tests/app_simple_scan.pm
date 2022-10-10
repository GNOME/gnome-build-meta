use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('simple-scan');
    assert_screen('app_simple_scan_home', 10);
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
