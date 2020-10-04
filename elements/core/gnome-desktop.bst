kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/3.36/gnome-desktop-3.36.7.tar.xz
  ref: b8a38b2a1bf5de05a651d9e8d8fcf02f1930e004640c076da00004f689f66076
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgudev.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgnome-distributor=gnome-build-meta
