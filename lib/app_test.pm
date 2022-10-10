package app_test;
use base "basetest";

use strict;
use warnings;
use testapi;
use gnomeutils;

sub post_fail_hook {
    # We don't know what state the app is in, but make sure it's closed
    # to avoid breaking the next test.
    send_key('alt-f4');
    assert_screen('desktop_empty') unless match_has_tag('generic-desktop');
}

1;
