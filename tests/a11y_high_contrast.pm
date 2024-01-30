use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    a11y_setup_test;
    # Go to Seeing Section
    assert_and_click('a11y_settings_accessibility_panel', timeout => 15, button => 'left',point_id => 'seeing_panel');
    # Switch on contrast
    assert_and_click('a11y_contrast', timeout => 15, button => 'left');
    # Switch off contrast
    assert_and_click('a11y_high_contrast', timeout => 15, button => 'left',point_id => 'high_contrast_off' );
    save_screenshot:
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
