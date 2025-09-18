use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    assert_and_click('gnome_desktop_tour', timeout => 120, button => 'left');
    assert_and_click('gnome_desktop_installer', timeout => 120, button => 'left');
    # FIXME: the installer exits activities mode.
    send_key('super');
    assert_screen('gnome_desktop_desktop', 20);
}

sub post_fail_hook {
    # When GDM, gnome-session or gnome-shell have problems, its usually
    # this test that fails. Having a full journal is very important for
    # debugging this kind of thing.

    select_console('user-virtio-terminal');
    assert_script_run('journalctl --merge --output export | xz > /tmp/journal.xz; chmod 777 /tmp/journal.xz');
    upload_asset('/tmp/journal.xz');
    select_console('x11');
}

sub test_flags {
    return { fatal => 1 };
}

1;
