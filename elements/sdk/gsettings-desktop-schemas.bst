kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gsettings-desktop-schemas/3.28/gsettings-desktop-schemas-3.28.0.tar.xz
  ref: 4cb4cd7790b77e5542ec75275237613ad22f3a1f2f41903a298cf6cc996a9167
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
