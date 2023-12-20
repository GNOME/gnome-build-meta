use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('gnome-control-center');
    assert_screen('app_settings_startup', 10);

      # ///////// TESTS RELATED TO HEARING ACCESSIBILITY ///////////
    
    type_string('acc');
    # Go to accessibility Section
    assert_and_click('app_settings_accessibility_button', timeout => 15, button => 'left');
    # Go to Hearing Section
    assert_and_click('app_settings_accessibility_hearing', timeout => 15, button => 'left');
    # Enable Visual alerts when alert sound occurs
    assert_and_click('app_settings_accessibility_enable_visual_alerts', timeout => 15, button => 'left');
    # Test visual alerts
    assert_and_click('app_settings_accessibility_test_visual_alerts', timeout => 15, button => 'left');
    # Disable Visual alerts when alert sound occurs
    assert_and_click('app_settings_accessibility_disable_visual_alerts', timeout => 15, button => 'left');
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;

