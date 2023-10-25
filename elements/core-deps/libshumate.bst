kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.1/libshumate-1.1.1.tar.xz
  ref: 37ac753c79410aaa1e57f4c051701b06f40991c418fb511aedc11a79b790fc04
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
