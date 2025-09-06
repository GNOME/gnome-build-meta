use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    a11y_setup_test;
    # Go to Hearing Section
    assert_and_click('a11y_settings_accessibility_panel', timeout => 15, button => 'left',point_id => 'hearing_panel');
    # Enable overamplification button
    assert_and_click('a11y_hearing_overamplification_button', timeout => 15, button => 'left');
    # Check default volume setting if volume can be amplified to more than 100%
    assert_and_click('a11y_sound_default_volume', timeout => 15, button => 'left');
    # show souund can go beyond 100%
    assert_and_click('a11y_sound_overamplified', timeout => 15, button => 'left');
    # go to back to previous step
    wait_screen_change { send_key('alt-left') };
    
    # Go to Hearing Section
    assert_and_click('a11y_hearing', timeout => 15, button => 'left');
    # Disable overamplication button
    assert_and_click('a11y_hearing_overamplification_button_off', timeout => 15, button => 'left');
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;

