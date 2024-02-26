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

    # If we're stuck at Shell launcher popup, this will close it.
    send_key('esc');

    assert_screen(['desktop_empty', 'desktop_empty_no_background']) unless match_has_tag('generic-desktop');
}

1;
