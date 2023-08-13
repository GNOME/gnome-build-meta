kind: meson

sources:
- kind: git_tag
  url: gnome:libshumate.git
  track: main
  ref: 1.0.1-123-g96bbe6b537aead5d25315a669ce02bf26ec43671

build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
