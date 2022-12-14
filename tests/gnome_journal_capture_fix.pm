use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    # The default boot timeout is overwritten due to some OSTree behaviour.
    # To re-enable journal capture via the serial console, we login once a user
    # account exists, and modify journald config to enable logging to serial
    # console again.
    select_console('user-virtio-terminal');
    assert_script_run('sudo sh -c "echo ForwardToConsole=true >> /etc/systemd/journald.conf"');
    assert_script_run('sudo sh -c "echo TTYPath=/dev/ttyS0 >> /etc/systemd/journald.conf"');
    assert_script_run('sudo systemctl force-reload systemd-journald');
    select_console('x11');
}

1;
