kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker/2.1/tracker-2.1.3.tar.xz
  ref: 42449bcfc9707b82b75f22a5d3a1154d0062411cbcb222d4f463372fecadf101
depends:
- core-deps/NetworkManager.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst

variables:
  meson-local: |
    -Dunicode_support=icu \
    -Dbash_completion=${prefix}/share/bash-completion/completions
