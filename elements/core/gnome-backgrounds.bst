kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-backgrounds/50/gnome-backgrounds-50.rc.tar.xz
  ref: a2d94f75abbbbe576a5785024b2d40010ab14edfbc645c868cd638d62a2dbd41
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/gdk-pixbuf.bst
- sdk/librsvg.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
