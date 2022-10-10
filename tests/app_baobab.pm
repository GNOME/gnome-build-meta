use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('baobab');
    assert_screen('app_baobab_home', 10);
    close_app;
}

1;
