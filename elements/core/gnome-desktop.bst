kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/3.38/gnome-desktop-3.38.2.tar.xz
  ref: 898bfc3a60e594e1f13b1836fbe334edf2a08342ec0f9df4d785a0f903e7f1d4
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgnome-distributor=gnome-build-meta
