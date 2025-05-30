kind: meson
sources:
- kind: git_repo
  url: gnome:libmediaart.git
  track: master
  ref: 1.9.7-0-gb68855ae47f2df349c50ef258e5d51811159acbc
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: |
    -Dimage_library=gdk-pixbuf
