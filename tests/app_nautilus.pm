use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('nautilus');
    assert_screen('app_nautilus_home', 10);
    send_key('ctrl-1');
    assert_screen('app_nautilus_list_view', 2);
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
