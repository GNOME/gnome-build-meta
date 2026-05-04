kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-menus.git
  track: master
  ref: 3.38.1-8-g55cf567b7bb3fd146f85c34dd8a5b3647edb3858
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
