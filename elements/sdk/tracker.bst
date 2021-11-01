kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/3.2/tracker-3.2.1.tar.xz
  ref: 1847e08b39e6e61d848735aa1f97f7d96c038201653fa0d7cb9e81b37eb9c03a
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
    -Ddocs=true
    -Dunicode_support=icu
    -Dstemmer=disabled
    -Dbash_completion_dir=%{datadir}/bash-completion/completions
