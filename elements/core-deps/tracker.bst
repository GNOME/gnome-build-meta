kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/tracker/2.1/tracker-2.1.7.tar.xz
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
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: |
    -Ddocs=false \
    -Dunicode_support=icu \
    -Dfunctional_tests=false \
    -Dbash_completion=${prefix}/share/bash-completion/completions
