use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    # To re-enable journal capture via the serial console, we login once a user
    # account exists, and modify journald config to enable logging to serial
    # console again.
    # FIXME: find a way to only configure journald through smbios only
    # and remove the kernel parameters.
    # tmpfiles.d provides journald.conf, but it might need to reload
    # the configuration since it is done after journald is started.
    select_console('user-virtio-terminal');
    assert_script_run('sudo systemctl force-reload systemd-journald');
    select_console('x11');
}

1;
