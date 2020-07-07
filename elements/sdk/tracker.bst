kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/2.99/tracker-2.99.2.tar.xz
  ref: 750bafe21aba0f58fef872f0244a011c2af038d26baa739643eaca39d3e635ff
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/icu.bst
variables:
  meson-local: >-
    -Ddocs=false
    -Dunicode_support=icu
    -Dstemmer=disabled
    -Dbash_completion_dir=%{datadir}/bash-completion/completions
