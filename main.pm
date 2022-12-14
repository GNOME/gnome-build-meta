use strict;
use warnings;
use testapi;
use autotest;
use needle;
use File::Basename;

my $distri = testapi::get_required_var('CASEDIR') . '/lib/gnomeosdistribution.pm';
require $distri;
testapi::set_distribution(gnomeosdistribution->new);

$testapi::username = 'testuser';
$testapi::password = 'testingtesting123';

autotest::loadtest("tests/gnome_install.pm");
autotest::loadtest("tests/gnome_welcome.pm");
autotest::loadtest("tests/gnome_journal_capture_fix.pm");
autotest::loadtest("tests/gnome_desktop.pm");
autotest::loadtest("tests/app_baobab.pm");
autotest::loadtest("tests/app_cheese.pm");
autotest::loadtest("tests/app_eog.pm");
autotest::loadtest("tests/app_epiphany.pm");
autotest::loadtest("tests/app_evince.pm");
autotest::loadtest("tests/app_gnome_calculator.pm");
autotest::loadtest("tests/app_gnome_calendar.pm");
autotest::loadtest("tests/app_gnome_characters.pm");
autotest::loadtest("tests/app_gnome_clocks.pm");
autotest::loadtest("tests/app_gnome_connections.pm");
autotest::loadtest("tests/app_gnome_console.pm");
autotest::loadtest("tests/app_gnome_contacts.pm");
autotest::loadtest("tests/app_gnome_disk_utility.pm");
autotest::loadtest("tests/app_gnome_font_viewer.pm");
autotest::loadtest("tests/app_gnome_weather.pm");
autotest::loadtest("tests/app_gnome_logs.pm");
autotest::loadtest("tests/app_gnome_maps.pm");
autotest::loadtest("tests/app_gnome_music.pm");
autotest::loadtest("tests/app_gnome_photos.pm");
autotest::loadtest("tests/app_gnome_software.pm");
autotest::loadtest("tests/app_gnome_system_monitor.pm");
autotest::loadtest("tests/app_gnome_text_editor.pm");
autotest::loadtest("tests/app_nautilus.pm");
autotest::loadtest("tests/app_settings.pm");
autotest::loadtest("tests/app_simple_scan.pm");
autotest::loadtest("tests/app_totem.pm");
autotest::loadtest("tests/app_yelp.pm");

1;
