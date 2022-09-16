use base 'basetest';
use strict;
use testapi;

sub run {
    my $self = shift;
    assert_and_click('gnome_firstboot_welcome', timeout => 600, button => 'left');
    assert_and_click('gnome_firstboot_language', timeout => 10, button => 'left');
    assert_and_click('gnome_firstboot_privacy', timeout => 10, button => 'left');
    assert_screen('gnome_firstboot_timezone_1', 30);
    send_key('tab');
    type_string('London, East', wait_screen_change => 6);
    assert_and_click('gnome_firstboot_timezone_2', timeout => 20, button => 'left');
    assert_and_click('gnome_firstboot_timezone_3', timeout => 20, button => 'left');
    assert_and_click('gnome_firstboot_accounts', timeout => 10, button => 'left');
    assert_screen('gnome_firstboot_aboutyou_1', 10);
    type_string('testuser');
    assert_and_click('gnome_firstboot_aboutyou_2', timeout => 10, button => 'left');
    assert_screen('gnome_firstboot_password_1', 10);
    type_string('testingtesting123');
    send_key('tab');
    type_string('testingtesting123');
    assert_and_click('gnome_firstboot_password_2', timeout => 10, button => 'left');
    assert_and_click('gnome_firstboot_complete', timeout => 10, button => 'left');
}

sub test_flags {
    return { fatal => 1 };
}

1;
