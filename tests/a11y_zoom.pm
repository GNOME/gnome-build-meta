use base 'app_test';
use strict;
use warnings; 
use testapi;
use gnomeutils;

sub run {
    start_app('epiphany');
    assert_screen('app_epiphany_home', 10);
    type_string('https://example.com/');
    send_key('ret');
    assert_screen('app_epiphany_example_page', 10);
    mouse_set(412, 245);
    send_key('alt-super-8');
    assert_screen('a11y_zoom', 10);
    send_key('alt-super-8');
    close_app;
}

1;
