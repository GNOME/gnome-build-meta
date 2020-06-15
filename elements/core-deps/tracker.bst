kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/2.99/tracker-2.99.1.tar.xz
  ref: 98b6349107e4c4340592a64635001b1a1e62bd04d2d9db921a7e1217cacae9c3
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
