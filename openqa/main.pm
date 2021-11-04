use strict;
use testapi;
use autotest;
use needle;

autotest::loadtest "tests/gnome_install.py";
autotest::loadtest "tests/gnome_welcome.py";
autotest::loadtest "tests/gnome_desktop.py";
1;
