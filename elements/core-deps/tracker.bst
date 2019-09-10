kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/2.3/tracker-2.3.0.tar.xz
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
