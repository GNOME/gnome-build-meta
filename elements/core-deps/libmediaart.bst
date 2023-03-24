kind: meson
sources:
- kind: git_tag
  url: gnome:libmediaart.git
  track: master
  ref: 1.9.6-0-g69b4176bccb8032180fd8d48bb8b035c60acd203
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk-deps/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: |
    -Dimage_library=gdk-pixbuf
