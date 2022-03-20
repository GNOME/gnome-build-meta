kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/41/gnome-desktop-41.4.tar.xz
  ref: 85eaa393f95844eca4839ac0d88d3eb8d2484f77a3ab823f9adc6451d055dfad
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
