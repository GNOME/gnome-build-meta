kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/42/gnome-desktop-42.alpha.1.tar.xz
  ref: 9715130435407aa829b4d59dc036ff5ca3924f2b4ee17ec53017f66abda05fec
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
- sdk/gtk.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgnome-distributor=gnome-build-meta
