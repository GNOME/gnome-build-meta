use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    a11y_setup_test;
    # Go to Seeing Section
    assert_and_click('a11y_settings_accessibility_panel', timeout => 15, button => 'left',point_id => 'seeing_panel');
     # Switch on Large Text
    assert_and_click('a11y_largetext', timeout => 15, button => 'left');
    # Switch on Large Text
    assert_and_click('a11y_large_text', timeout => 15, button => 'left',point_id => 'disable');
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
