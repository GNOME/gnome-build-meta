kind: meson

sources:
- kind: git_tag
  url: gnome:libshumate.git
  track: main
  ref: 1.0.1-54-gf1f3108df8f027bab9abcd2bbee03e7642236845

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
