kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gsettings-desktop-schemas/3.28/gsettings-desktop-schemas-3.28.1.tar.xz
depends:
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --enable-introspection=yes
