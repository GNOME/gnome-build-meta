kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-menus/3.38/gnome-menus-3.38.1.tar.xz
  ref: 1198a91cdbdcfb232df94e71ef5427617d26029e327be3f860c3b0921c448118
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
