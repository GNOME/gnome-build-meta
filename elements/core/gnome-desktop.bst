kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/3.38/gnome-desktop-3.38.7.tar.xz
  ref: 70c0f0a3520eeb327f46624d93d89b3e3b272b071eda521d7d679859c421f978
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
