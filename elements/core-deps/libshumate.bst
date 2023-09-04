kind: meson

sources:
- kind: git_tag
  url: gnome:libshumate.git
  track: main
  ref: 1.1.rc-1-ga3299515b45ed03fd78200648de322e25644ee46

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
