# Some of this code is based on the OpenSuSE tests, particularly
# `x11_start_program` function found here:
# https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/master/lib/susedistribution.pm

sub run_command {
    my $command = $_[0];
    my $desktop_runner_hotkey = 'alt-f2';
    my $desktop_runner_timeout = 2;

    # Exit activities view if it's open.
    send_key('esc');
    wait_still_screen(2);

    send_key($desktop_runner_hotkey, wait_screen_change => true);

    assert_screen('desktop_runner', $desktop_runner_timeout);

    type_string($command);
    send_key 'ret';
}

sub start_app {
    my $command = $_[0];
    run_command($command);

    wait_still_screen(2);
    save_screenshot;
}

1;
