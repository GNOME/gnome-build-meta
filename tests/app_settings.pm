use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('gnome-control-center');
    assert_screen('app_settings_startup', 10);
    
    # ///////// TESTS RELATED TO APPEARANCE ///////////

    # Go to appearance section
    assert_and_click('app_settings_appearance_button', timeout => 15, button => 'left');
    # Change theme to dark mode
    assert_and_click('dark_appearance_button', timeout => 10, button => 'left');
    wait_still_screen(5);
    # Change theme back to default
    assert_and_click('default_appearance_button', timeout => 15, button => 'left');
   close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
