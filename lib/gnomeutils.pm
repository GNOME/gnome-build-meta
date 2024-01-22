# Some of this code is based on the OpenSuSE tests, particularly
# `x11_start_program` function found here:
# https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/master/lib/susedistribution.pm

package gnomeutils;

use base Exporter;
use Exporter;

use strict;
use warnings;

use testapi;

our @EXPORT = qw(
    run_command
    start_app
    close_app
    a11y_setup_test
);

sub run_command {
    my $command = $_[0];
    my $desktop_runner_hotkey = 'alt-f2';
    my $desktop_runner_timeout = 2;

    # Exit activities view if it's open.
    send_key('esc');
    wait_still_screen(2);

    send_key($desktop_runner_hotkey, wait_screen_change => 'true');

    assert_screen('desktop_runner', $desktop_runner_timeout);

    type_string($command);
    send_key('ret');
}

sub start_app {
    my $command = $_[0];
    run_command($command);

    wait_still_screen(2);
}

sub close_app {
    wait_screen_change { send_key('alt-f4') };
    assert_screen('desktop_empty')  unless match_has_tag('generic-desktop');
}

sub a11y_setup_test {
    start_app('gnome-control-center');
    assert_screen(['a11y_settings_accessibility_panel', 'app_settings_startup']) ;   
    if (!match_has_tag("app_settings_startup")) {
        assert_screen('a11y_settings_accessibility_panel') 
    } else {
        type_string('acc');
        assert_and_click('a11y_button', timeout => 15, button => 'left');  
    }  
   
}

1;
