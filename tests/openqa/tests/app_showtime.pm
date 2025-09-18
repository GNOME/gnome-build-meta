use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('showtime');
    assert_screen('app_showtime_home', 10);
    close_app;
}

1;
