kind: meson
sources:
- kind: git_repo
  url: gnome:libmediaart.git
  track: master
  ref: 1.9.6-3-g85756605089a7c9284c5a93996ab41f83827c676
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
