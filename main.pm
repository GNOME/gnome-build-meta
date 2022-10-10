use strict;
use warnings;
use testapi;
use autotest;
use needle;
use File::Basename;

autotest::loadtest("tests/gnome_install.pm");
autotest::loadtest("tests/gnome_welcome.pm");
autotest::loadtest("tests/gnome_desktop.pm");
autotest::loadtest("tests/app_baobab.pm");
autotest::loadtest("tests/app_cheese.pm");
autotest::loadtest("tests/app_eog.pm");
autotest::loadtest("tests/app_epiphany.pm");
autotest::loadtest("tests/app_evince.pm");
autotest::loadtest("tests/app_gnome_calculator.pm");
autotest::loadtest("tests/app_gnome_calendar.pm");
autotest::loadtest("tests/app_gnome_characters.pm");
autotest::loadtest("tests/app_gnome_weather.pm");
autotest::loadtest("tests/app_nautilus.pm");
autotest::loadtest("tests/app_settings.pm");
autotest::loadtest("tests/app_simple_scan.pm");

1;
