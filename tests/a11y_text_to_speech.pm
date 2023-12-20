use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

use constant SCREENREADER_ACTIVATION_TIMEOUT => 1;

sub run {
    start_audiocapture;
    select_console('user-virtio-terminal');
    assert_script_run('spd-say "this is a test"');
    sleep SCREENREADER_ACTIVATION_TIMEOUT;
    assert_recorded_sound('gnome_audio_speech_dispatcher');
    select_console('x11');
}

1;