kind: meson
sources:
- kind: git_repo
  url: gnome:libmediaart.git
  track: master
  ref: 1.9.6-5-gcfe62990968ba7a8bb72e7762b35f958c32f1354
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: |
    -Dimage_library=gdk-pixbuf
