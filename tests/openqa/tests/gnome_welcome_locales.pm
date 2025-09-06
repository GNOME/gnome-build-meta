use base 'basetest';
use strict;
use testapi;

# Taken from https://github.com/os-autoinst/os-autoinst-distri-opensuse/blob/master/lib/utils.pm#L110
use constant SLOW_TYPING_SPEED => 13;

sub run {
    my $self = shift;
    # Tests for language change to Arabic

    assert_screen('gnome_firstboot_welcome', timeout => 600);
    assert_screen('gnome_firstboot_welcome_lang', timeout => 10, button => 'left');
    click_lastmatch(button => 'left',point_id => 'lang_arabic');
    assert_screen('gnome_firstboot_language_arabic', timeout => 10);
    assert_and_click('gnome_firstboot_language_arabic', timeout => 10, button => 'left',point_id => 'next');
    assert_screen('gnome_firstboot_language_arabic_2', timeout => 10);
    assert_and_click('gnome_firstboot_language_arabic_2', timeout => 10, button => 'left',point_id => 'previous');
    assert_screen('gnome_firstboot_language_arabic', timeout => 10);
    assert_and_click('gnome_firstboot_language_arabic', timeout => 10, button => 'left',point_id => 'lang_english');
    assert_screen_change { mouse_click('left') };
    assert_screen('gnome_firstboot_welcome', timeout => 20);
    # Tests for language change to Japanese 

    assert_screen('gnome_firstboot_welcome_lang', timeout => 10, button => 'left');
    click_lastmatch(button => 'left',point_id => 'lang_japanese');
    assert_screen('gnome_firstboot_language_japanese', timeout => 10);
    assert_and_click('gnome_firstboot_language_japanese', timeout => 10, button => 'left',point_id => 'next');
    assert_screen('gnome_firstboot_language_japanese_2', timeout => 10);
    assert_and_click('gnome_firstboot_language_japanese_2', timeout => 10, button => 'left',point_id => 'previous');
    assert_screen('gnome_firstboot_language_japanese', timeout => 10);
    assert_and_click('gnome_firstboot_language_japanese', timeout => 10, button => 'left',point_id => 'lang_english');
    assert_screen_change { mouse_click('left') };
    assert_screen('gnome_firstboot_welcome', timeout => 20);
    # Tests for language change to Russian

    assert_screen('gnome_firstboot_welcome_lang', timeout => 10, button => 'left');
    click_lastmatch(button => 'left',point_id => 'lang_russian');
    assert_screen('gnome_firstboot_language_russian', timeout => 10);
    assert_and_click('gnome_firstboot_language_russian', timeout => 10, button => 'left',point_id => 'next');
    assert_screen('gnome_firstboot_language_russian_2', timeout => 10);
    assert_and_click('gnome_firstboot_language_russian_2', timeout => 10, button => 'left',point_id => 'previous');
    assert_screen('gnome_firstboot_language_russian', timeout => 10);
    assert_and_click('gnome_firstboot_language_russian', timeout => 10, button => 'left',point_id => 'lang_english');
    assert_screen_change { mouse_click('left') };
    assert_screen('gnome_firstboot_welcome', timeout => 20);

}

sub test_flags {
    return { fatal => 1 };
}

1;
