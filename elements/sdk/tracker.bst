kind: meson
sources:
- kind: tar
  url: gnome_downloads:tracker/3.1/tracker-3.1.0.rc.tar.xz
  ref: fbdc409d28715c3106a5aca5070bfe543c21c03316cec81cc8ac1795fe785e2f
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
