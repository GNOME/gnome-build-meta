kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/41/gnome-desktop-41.6.tar.xz
  ref: 8b3d942ae2ece55c1c9bbd87e7c9550f6ab9d441ac73ae54aab0c3ef621a388b
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
