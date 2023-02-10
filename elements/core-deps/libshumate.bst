kind: meson

sources:
- kind: git_tag
  url: gnome:libshumate.git
  track: main
  ref: 1.0.1-47-gbb32d10e36f8321f09afb3347332ffb4ae72b6ba

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
