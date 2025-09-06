use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
     a11y_setup_test;
    # Go to Hearing Section
    assert_and_click('a11y_settings_accessibility_panel', timeout => 15, button => 'left',point_id => 'hearing_panel');
    # Enable Visual alerts when alert sound occurs
    assert_and_click('a11y_enable_visual_alerts', timeout => 15, button => 'left',point_id => 'enable');
    # Test visual alerts
    assert_and_click('a11y_test_visual_alerts', timeout => 15, button => 'left');
    # test if the screen changed when the test button is clicked
    wait_still_screen(5);
     # Disable Visual alerts when alert sound occurs
    assert_and_click('a11y_visual_alerts', timeout => 15, button => 'left',point_id => 'disable');
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;

