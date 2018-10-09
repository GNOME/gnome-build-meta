kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker/2.1/tracker-2.1.5.tar.xz
depends:
- core-deps/NetworkManager.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst

variables:
  meson-local: |
    -Dunicode_support=icu \
    -Dbash_completion=${prefix}/share/bash-completion/completions
