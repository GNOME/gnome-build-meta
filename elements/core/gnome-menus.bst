kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-menus/3.35/gnome-menus-3.35.3.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
