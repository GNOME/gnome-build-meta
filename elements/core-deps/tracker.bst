kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/2.3/tracker-2.3.4.tar.xz
  ref: 577952244ab977c78b0b88e2f63c4197eaba16e4d66bff692b7f58993e06516d
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
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Ddocs=false -Dunicode_support=icu -Dfunctional_tests=false -Dstemmer=disabled
    -Dbash_completion=%{datadir}/bash-completion/completions
