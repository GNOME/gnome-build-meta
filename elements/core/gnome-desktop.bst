kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/3.35/gnome-desktop-3.35.91.tar.xz
  ref: e92686ac1d0a5f6395384468bae0176d979c09e3e7e8e358e4d397f649e389b8
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
