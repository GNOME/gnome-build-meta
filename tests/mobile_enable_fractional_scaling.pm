use base 'basetest';
use strict;
use testapi;
use gnomeutils;

use constant SLOW_TYPING_SPEED => 13;

sub run {
    my $self = shift;
    select_console('user-virtio-terminal');

    # Update the monitors.xml file
    assert_script_run(
        'echo \'<monitors version="2">
        <configuration>
        <logicalmonitor>
        <x>0</x>
        <y>0</y>
        <scale>2</scale>
        <primary>yes</primary>
        <monitor>
        <monitorspec>
        <connector>Virtual-1</connector>
        <vendor>RTH</vendor>
        <product>QEMU Monitor</product>
        <serial>0x00000000</serial>
        </monitorspec>
        <mode>
        <width>720</width>
        <height>1440</height>
        <rate>60.049</rate>
        </mode>
        </monitor>
        </logicalmonitor>
        </configuration>
        </monitors>\' > ~/.config/monitors.xml'
    );

    # assert_script_run('ls ~/.config/');
    type_string('systemctl restart gdm');
    send_key('ret');
    sleep 1;
    type_string($testapi::password);
    send_key('ret');
    assert_script_run('ls ~/.config/');
    select_console('gdm');
    assert_and_click('mobile_login_1',  timeout => 100, button => 'left');
    type_string($testapi::password);
    send_key('ret');
    # assert_screen('mobile_desktop_generic', 10);
    sleep 15;
    save_screenshot;
}

sub test_flags {
    return { fatal => 1 };
}

1;
