kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-menus.git
  track: master
  ref: 3.36.0-25-g44017d220447c206f3fdfef0107b44a0d6a74b12
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
