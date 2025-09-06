use base 'basetest';
use strict;
use testapi;

sub run {
    # Click the power button in the system menu.
    mouse_set(1000, 14);
    mouse_click('left');

    # Open the system menu's power section.
    assert_and_click('gnome_reboot_systemmenu', button => 'left');

    # Click "Reboot..." in submenu
    assert_and_click('gnome_reboot_systemmenu_reboot', button => 'left');

    # Confirm we really want to power off (jump the 60 second timer)
    assert_and_click('gnome_reboot_confirm', button => 'left');

    # We will need to login in consoles again
    reset_consoles;
}

sub test_flags {
    return { fatal => 1 };
}

1;
