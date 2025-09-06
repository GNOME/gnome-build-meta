use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    # App tests fail if the "Software Updates Ready to Install" notification
    # appears over the top.
    select_console('user-virtio-terminal');
    assert_script_run('gsettings set org.gnome.desktop.notifications.application:/org/gnome/desktop/notifications/application/org-gnome-software/ enable false');
    assert_script_run('cat /proc/cmdline');
    select_console('x11');
}

1;
