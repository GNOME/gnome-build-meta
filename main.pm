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

my $testsuite = testapi::get_required_var('TEST');

if ($testsuite eq "gnome_install") {
    autotest::loadtest("tests/gnome_welcome.pm");
    autotest::loadtest("tests/gnome_disable_update_notification.pm");
    autotest::loadtest("tests/gnome_installer.pm");
    autotest::loadtest("tests/gnome_reboot.pm");
    autotest::loadtest("tests/gnome_login.pm");
    autotest::loadtest("tests/show_core_dumps.pm");
    autotest::loadtest("tests/gnome_shutdown.pm");
} elsif ($testsuite eq "gnome_apps") {
    $testapi::form_factor_postfix = '';
    autotest::loadtest("tests/gnome_welcome.pm");
    autotest::loadtest("tests/gnome_disable_update_notification.pm");
    autotest::loadtest("tests/gnome_desktop.pm");
    autotest::loadtest("tests/gnome_audio.pm");
    autotest::loadtest("tests/app_baobab.pm");
    autotest::loadtest("tests/app_epiphany.pm");
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
    autotest::loadtest("tests/app_gnome_software.pm");
    autotest::loadtest("tests/app_gnome_system_monitor.pm");
    autotest::loadtest("tests/app_gnome_text_editor.pm");
    autotest::loadtest("tests/app_loupe.pm");
    autotest::loadtest("tests/app_nautilus.pm");
    autotest::loadtest("tests/app_papers.pm");
    autotest::loadtest("tests/app_snapshot.pm");
    autotest::loadtest("tests/app_settings.pm");
    autotest::loadtest("tests/app_simple_scan.pm");
    autotest::loadtest("tests/app_showtime.pm");
    autotest::loadtest("tests/app_yelp.pm");
    autotest::loadtest("tests/show_core_dumps.pm");

} elsif ($testsuite eq "gnome_accessibility") {
    $testapi::form_factor_postfix = '';
    autotest::loadtest("tests/gnome_welcome.pm");
    autotest::loadtest("tests/gnome_disable_update_notification.pm");
    autotest::loadtest("tests/gnome_desktop.pm");
    autotest::loadtest("tests/a11y_high_contrast.pm");
    autotest::loadtest("tests/a11y_large_text.pm");
    autotest::loadtest("tests/a11y_overlay_scrollbar.pm");
    autotest::loadtest("tests/a11y_over_amplification.pm");
    autotest::loadtest("tests/a11y_visual_alerts.pm");
    autotest::loadtest("tests/a11y_text_to_speech.pm");
    autotest::loadtest("tests/a11y_screen_reader.pm");
    autotest::loadtest("tests/a11y_zoom.pm");
    # Disabled temporarily due to https://gitlab.gnome.org/GNOME/openqa-tests/-/issues/113
    autotest::loadtest("tests/a11y_screen_keyboard.pm");

} elsif ($testsuite eq "gnome_mobile") {
    # Triggers resize_app_to_mobile function
    # changes which needle is selected
    $testapi::form_factor_postfix = '_mobile';
    autotest::loadtest("tests/gnome_welcome.pm");
    autotest::loadtest("tests/gnome_disable_update_notification.pm");
    autotest::loadtest("tests/gnome_desktop.pm");
    autotest::loadtest("tests/mobile_change_background_colour.pm");
    # This isn't showing a mobile form factor at all
    #autotest::loadtest("tests/app_evince.pm");
    autotest::loadtest("tests/app_gnome_calculator.pm");
    autotest::loadtest("tests/app_gnome_characters.pm");
    autotest::loadtest("tests/app_gnome_clocks.pm");
    autotest::loadtest("tests/app_gnome_console.pm");
    autotest::loadtest("tests/app_gnome_contacts.pm");
    autotest::loadtest("tests/app_gnome_font_viewer.pm");
    autotest::loadtest("tests/app_gnome_text_editor.pm");
    autotest::loadtest("tests/app_loupe.pm");
    autotest::loadtest("tests/app_nautilus.pm");
    autotest::loadtest("tests/app_simple_scan.pm");
    autotest::loadtest("tests/app_snapshot.pm");

} elsif ($testsuite eq "gnome_locales") {
    autotest::loadtest("tests/gnome_welcome_locales.pm");

} else {
    die("Invalid testsuite: '$testsuite'");
}

1;
