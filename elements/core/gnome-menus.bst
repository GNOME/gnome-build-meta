kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-menus.git
  track: master
  ref: 3.38.1-3-g9b0afa148983ab6f616d3d62216a3d90bf432236
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
