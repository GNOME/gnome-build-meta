use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;

    # Skip tour first
    assert_and_click('gnome_installer_tour', timeout => 120, button => 'left');

    assert_and_click('gnome_installer_install', button => 'left');
    assert_and_click('gnome_installer_disk', button => 'left');
    assert_and_click('gnome_installer_install_button', button => 'left');
    assert_screen('gnome_installer_installing');
    assert_and_click('gnome_installer_installed', timeout => 120, button => 'left');
    eject_cd;
}

sub post_fail_hook {
    select_console('user-virtio-terminal');
    assert_script_run('journalctl --merge --output export | xz > /tmp/journal.xz; chmod 777 /tmp/journal.xz');
    upload_asset('/tmp/journal.xz');
    select_console('x11');
}

sub test_flags {
    return { fatal => 1 };
}

1;
