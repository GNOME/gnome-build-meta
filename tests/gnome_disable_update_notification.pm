use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    # App tests fail if the "Software Updates Ready to Install" notification
    # appears over the top.
    select_console('user-virtio-terminal');
    assert_script_run('sudo rm /etc/xdg/autostart/org.gnome.Software.desktop');
    select_console('x11');
}

1;
