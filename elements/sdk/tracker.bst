kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/2.99/tracker-2.99.5.tar.xz
  ref: 4467fd8f6713ccf72ce458de85a9d9fffa27187576bd0a5ab684305b8d628a5f
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/systemd.bst
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
