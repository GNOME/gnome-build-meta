use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    a11y_setup_test;
    # Go to Seeing Section
    assert_and_click('a11y_settings_accessibility_panel', timeout => 15, button => 'left',point_id => 'seeing_panel');
    # Go to overlay scrollbars-toggle on
    assert_and_click('a11y_always_show_scrollbar_on', timeout => 15, button => 'left');
    # Go to overlay scrollbars-toggle off
    assert_and_click('a11y_always_show_scrollbar_off', timeout => 15, button => 'left');
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;
