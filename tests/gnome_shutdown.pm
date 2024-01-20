use base 'basetest';
use strict;
use testapi;

sub run {
    # Log out console user - otherwise this will block shutdown.
    select_console('user-virtio-terminal');
    script_run('exit', timeout => 5, die_on_timeout => 0);
    select_console('x11');

    # Click the power button in the system menu.
    mouse_set(1000, 14);
    mouse_click('left');

    # Open the system menu's power section.
    assert_and_click('gnome_shutdown_systemmenu', button => 'left');

    # Click "Power off..." in submenu
    assert_and_click('gnome_shutdown_systemmenu_power', button => 'left');

    # Confirm we really want to power off (jump the 60 second timer)
    assert_and_click('gnome_shutdown_confirm', button => 'left');

    assert_shutdown(120);
}

sub test_flags {
    return { fatal => 1 };
}

1;
