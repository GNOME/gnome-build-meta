kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-desktop/3.34/gnome-desktop-3.34.6.tar.xz
  ref: 96963115d9e988e66cc6108bbe3bc7029def94f7c6ec16b0e0dec84727fd6154
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
