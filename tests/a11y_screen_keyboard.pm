use base 'app_test';
use strict;
use warnings;
use testapi;
use gnomeutils;
use constant SLOW_TYPING_SPEED => 13;
sub run {
    
    a11y_setup_test;
    assert_and_click('a11y_settings_accessibility_panel', timeout => 15, button => 'left',point_id => 'typing_panel');
    # Enable On Screen Keyboard(OSK)
    assert_and_click('a11y_screen_keyboard_on', timeout => 15, button => 'left');
    # assert to confirm OSK was really enable before testing
    assert_screen('a11y_screen_keyboard_enabled', 15);
    # start gnome-text-editor to test onscreen keyboard
    start_app('gnome-text-editor');
    #  To highlight focus on gnome-text-editor
    wait_screen_change { 
        sub {
            hold_key('alt');
            send_key('tab');
            release_key('alt');
        }
    };
    mouse_set(200, 200);
    # Mouse click for focus which pops up OSK
    assert_screen_change { mouse_click('left') };
    # Test to hide OSK by clicking (the button on the bottom right)
    assert_and_click('a11y_screen_keyboard_popup', timeout => 15, button => 'left',point_id => 'hide');
    # Highlight focus again for OSK to popup again after hiding it
    mouse_set(200, 200);
    # Mouse click for focus
    assert_screen_change { mouse_click('left') };
    # Type characters to test OSK string "hello"
    assert_and_click('a11y_screen_keyboard_popup', timeout => 15, button => 'left',point_id => 'h');
    # Type characters to test OSK string "e"
    click_lastmatch(button => 'left', point_id => 'e' );
    # Type characters to test OSK string "l" doulbe click to make "ll"
    click_lastmatch(button => 'left', point_id => 'l' ,dclick => 1 );
    # Type characters to test OSK string "o"
    click_lastmatch(button => 'left', point_id => 'o' );
    # Change to number format mode using OSK
    click_lastmatch(button => 'left', point_id => 'number_mode' );
    # Type numbers and symbol "@"
    click_lastmatch(button => 'left', point_id => '@' );
    # Type numbers and symbol "1"
    click_lastmatch(button => 'left', point_id => '1' );
    # Type numbers and symbol "2"
    click_lastmatch(button => 'left', point_id => '2' );
    # Enable emoji mode by clicking emoji button on OSK
    assert_and_click('a11y_screen_keyboard_popup_emoji', timeout => 15, button => 'left',point_id => 'emoji_mode');
    # Double click on afun emoji
    assert_and_click('a11y_screen_keyboard_emojis', timeout => 15, button => 'left',point_id => 'fun_emoji',dclick => 1);
    # Confirm all characters and emojis typed
    assert_screen('a11y_screen_keyboard_new', 15);
    # click back to ABC mode to proceed
    assert_and_click('a11y_screen_keyboard_new', timeout => 15, button => 'left',point_id => 'ABC_mode');
    # Check language OSK preference settings
    assert_and_click('a11y_screen_keyboard_final', timeout => 15, button => 'left',point_id => 'language_preference');
    # Check if language preference settings popped up
    assert_screen('a11y_screen_keyboard_lang', 15);
    # Remove lang settings popup
    assert_and_click('a11y_screen_keyboard_lang_off', timeout => 15, button => 'left',point_id => 'lang_off',dclick => 1);
    # Close texteditor to exit
    wait_screen_change { send_key('ctrl-w') };
    # Click Discard button to discard document
    assert_and_click('a11y_screen_keyboard_discard', timeout => 15, button => 'left');
    # Close texteditor to exit
    wait_screen_change { send_key('ctrl-w') };
    # Screen takes us back to settings-accessibility panel running in the background-click typing
    assert_and_click('a11y_typing', timeout => 15, button => 'left');
    # Disable OSK
    assert_and_click('a11y_screen_keyboard_enabled', timeout => 15, button => 'left',point_id => 'disable');
    # Last check to confirm Keyboard was disabled
    assert_screen('a11y_screen_keyboard_disabled', 15);
    close_app;
}

sub test_flags {
    return { fatal => 0 };
}

1;

