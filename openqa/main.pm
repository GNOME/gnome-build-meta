use strict;
use warnings;
use testapi;
use autotest;
use needle;
use File::Basename;

autotest::loadtest "tests/gnome_install.pm";
autotest::loadtest "tests/gnome_welcome.pm";
autotest::loadtest "tests/gnome_desktop.pm";
autotest::loadtest "tests/app_settings.pm";

1;
