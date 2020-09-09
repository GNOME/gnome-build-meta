kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/2.3/tracker-2.3.6.tar.xz
  ref: bd1eb4122135296fa7b57b1c3fa0ed602cf7d06c0b8e534d0bd17ff5f97feef2
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/upower.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=false
    -Dunicode_support=icu
    -Dfunctional_tests=false
    -Dstemmer=disabled
    -Dbash_completion=%{datadir}/bash-completion/completions
