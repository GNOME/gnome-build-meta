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
    resize_app_to_mobile
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

# This function launches the Looking glass app and then types in the following command which 
# resized the window to 360X720. This is the selected screen resolution for testing the mobile
# versions of applications as it is quite a common screen resolution for mobile devices
# go to the following link for more information on the lg command: 
# https://stackoverflow.com/questions/75110787/gnome-shell-extension-resize-and-position-a-window-on-creation
sub resize_app_to_mobile {
    start_app('lg');
    type_string('global.display.get_focus_window().move_resize_frame(false, 0, 0, 360, 720)');
    send_key('ret');
    send_key('esc');
}

sub close_app {
    wait_screen_change { send_key('alt-f4') };
    assert_screen(['desktop_empty', 'desktop_empty_no_background'])  unless match_has_tag('generic-desktop');
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
