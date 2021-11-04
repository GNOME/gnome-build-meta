from testapi import *

def run(self):
    assert_and_click('gnome_install_1', button='left', timeout=120)
    assert_and_click('gnome_install_disk', button='left', timeout=10)
    assert_and_click('gnome_install_disk2', button='left', timeout=10)
    assert_screen('gnome_install_reformatting1', 120)
    assert_screen('gnome_install_complete', 120)
    eject_cd
    power('reset')

def test_flags(self):
    return { 'fatal': 1 }
