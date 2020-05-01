kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/3.36/gnome-desktop-3.36.2.tar.xz
  ref: 38f994dcb1e1ae093d1c929c7acc4f88e39111e43b5fdc13125b0f6e2311c789
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
