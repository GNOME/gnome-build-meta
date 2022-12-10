kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-menus.git
  track: master
  ref: 3.36.0-15-ge07c66ec770fb5febccaadcd9594a7c30c0ba4ca
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
