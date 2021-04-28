kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/3.1/tracker-3.1.1.tar.xz
  ref: 4376e2e98454066f44f7a242e45b99b3bfe4c03b67fab19abb0ed586ca748ae7
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocs=false
    -Dunicode_support=icu
    -Dstemmer=disabled
    -Dbash_completion_dir=%{datadir}/bash-completion/completions
