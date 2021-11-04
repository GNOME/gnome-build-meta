from testapi import *

def run(self):
    assert_and_click('gnome_desktop_tour', timeout=60, button='left');
    assert_screen('gnome_desktop_desktop', 60);

def test_flags(self):
    return { 'fatal': 1 }
