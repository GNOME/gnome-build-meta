kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.2/gnome-autoar-0.2.4.tar.xz
  ref: 0a34c377f8841abbf4c29bc848b301fbd8e4e20c03d7318c777c58432033657a
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
