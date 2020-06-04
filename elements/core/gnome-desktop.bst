kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/3.34/gnome-desktop-3.34.7.tar.xz
  ref: 186575a9cc316db2471ba53d5407b06e41f112d87f0bffd0eb322ce17effbe94
depends:
- core-deps/libgudev.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/iso-codes.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
- filename: components/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dgnome-distributor=gnome-build-meta
