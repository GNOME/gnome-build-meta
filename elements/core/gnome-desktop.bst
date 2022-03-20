kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/41/gnome-desktop-41.5.tar.xz
  ref: a85aa82f7fe2b18640475ba547fcf0314e6007e19bc58f6e74cb926021345c0c
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgnome-distributor=gnome-build-meta
