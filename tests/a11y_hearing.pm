use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_app('gnome-control-center');
    # ///////// TESTS RELATED TO HEARING ACCESSIBILITY ///////////
    
    # Go to Hearing Section
    assert_and_click('app_settings_accessibility_hearing', timeout => 15, button => 'left');
    # Enable overamplification button
    assert_and_click('app_settings_accessibility_hearing_overamplification_button', timeout => 15, button => 'left');
    # Check default volume setting if volume can be amplified to more than 100%
    assert_and_click('app_sound_default_volume', timeout => 15, button => 'left');
    # show souund can go beyond 100%
    assert_and_click('app_sound_overamplified', timeout => 15, button => 'left');
    # go to back to previous step
    wait_screen_change { send_key('alt-left') };
    
    # Go to Hearing Section
    assert_and_click('app_settings_accessibility_hearing', timeout => 15, button => 'left');
    # Disable overamplication button
    assert_and_click('app_settings_accessibility_hearing_overamplification_button_off', timeout => 15, button => 'left');

    # Test for visual alerts when alert sound occurs
    
    # Enable Visual alerts when alert sound occurs
    assert_and_click('app_settings_accessibility_enable_visual_alerts', timeout => 15, button => 'left',,point_id => 'enable');
    # Test visual alerts
    assert_and_click('app_settings_accessibility_test_visual_alerts', timeout => 15, button => 'left');
    # test if the screen changed when the test button is clicked
    assert_screen_change { send_key 'alt-f4' };
    # Disable Visual alerts when alert sound occurs
    assert_and_click('app_settings_accessibility_enable_visual_alerts', timeout => 15, button => 'left',point_id => 'disable');

    # assert_and_click('app_settings_accessibility_disable_visual_alerts', timeout => 15, button => 'left');
    # assert_screen_change { send_key 'alt-f4' };

    save_screenshot;

    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;

