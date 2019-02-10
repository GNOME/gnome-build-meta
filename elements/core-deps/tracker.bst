kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker/2.1/tracker-2.1.7.tar.xz
  ref: fb4e7b71929dbc56045bc5920bd0e47b6081a094c131e991e5a411e44b24a24a
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
