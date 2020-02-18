kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.2/gnome-autoar-0.2.4.tar.xz
  ref: 0a34c377f8841abbf4c29bc848b301fbd8e4e20c03d7318c777c58432033657a
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/libarchive.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
