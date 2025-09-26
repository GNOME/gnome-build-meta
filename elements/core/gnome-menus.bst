kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-menus.git
  track: master
  ref: 3.38.1-1-g16bc84f9bb08e45ff3dcfd90ed35a13aeb102a7e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
