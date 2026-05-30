#! /usr/bin/env python3

import pytest
from write_news import decrement_gnome_version

def test_decrement_gnome_version():
    assert decrement_gnome_version("42.0") == "41.rc"
    assert decrement_gnome_version("42.1") == "42.0"
    assert decrement_gnome_version("42.3") == "42.2"
    assert decrement_gnome_version("42.9") == "42.8"

    assert decrement_gnome_version("50.alpha") == "49.0"
    assert decrement_gnome_version("43.beta") == "43.alpha"
    assert decrement_gnome_version("48.rc") == "48.beta"
    assert decrement_gnome_version("49.0") == "48.rc"

    # Edge case, that might happen once in a blue moon
    # We could be checking the ftp to find the last release but for now
    # It's fine to just always downgrade to the expected one
    assert decrement_gnome_version("50.alpha.1") == "49.0"
    assert decrement_gnome_version("50.alpha1") == "49.0"

    with pytest.raises(ValueError):
        decrement_gnome_version("42.11")
