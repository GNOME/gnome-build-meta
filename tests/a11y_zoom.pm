use base 'app_test';
use strict;
use warnings; 
use testapi;
use gnomeutils;

sub run {
    send_key('alt-super-8');
    send_key('alt-super-+');

    assert_screen('a11y_zoom', 10);
}

1;
