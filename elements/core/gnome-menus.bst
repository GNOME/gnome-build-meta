kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-menus.git
  track: master
  ref: 3.36.0-13-ge173f0aa4ab2806df1b78ea9826d1c33f0f28fec
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
