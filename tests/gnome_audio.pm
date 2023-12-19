use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;

sub run {
    start_audiocapture;
    select_console('user-virtio-terminal');
    assert_script_run('pw-play /usr/share/sounds/speech-dispatcher/test.wav');
    select_console('x11');
    assert_recorded_sound('gnome_audio');
}

1;