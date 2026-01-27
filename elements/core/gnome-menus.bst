kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-menus.git
  track: master
  ref: 3.38.1-6-g7c30438ef8d6b5e5c32798be461332e70795d67a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
