use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

use constant TEST_AUDIO_TIMEOUT => 3;

sub run {
    a11y_setup_test;
    # Go to Seeing Section
    assert_and_click('a11y_settings_accessibility_panel', timeout => 15, button => 'left',point_id => 'seeing_panel');

    start_audiocapture;

    assert_and_click('a11y_screen_reader_on', timeout => 15, button => 'left');
    sleep TEST_AUDIO_TIMEOUT;
    assert_recorded_sound('a11y_screen_reader_sound');
    assert_and_click('a11y_screen_reader_off', timeout => 15, button => 'left');
    close_app;
}

1;
