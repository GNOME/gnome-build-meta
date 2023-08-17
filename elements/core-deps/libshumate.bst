kind: meson

sources:
- kind: git_tag
  url: gnome:libshumate.git
  track: main
  ref: 1.1.beta-0-g5f9ef154d12f9bed5fb238c5a7ae9bb605bfa5b7

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
