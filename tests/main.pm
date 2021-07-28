use strict;
use testapi;
use autotest;
use needle;

autotest::loadtest "tests/gnome_install.pm";
autotest::loadtest "tests/gnome_welcome.pm";
autotest::loadtest "tests/gnome_desktop.pm";
1;
