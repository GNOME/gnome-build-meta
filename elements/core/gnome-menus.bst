kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-menus.git
  track: master
  ref: 3.36.0-18-g1fe0d3eb8b70ae50cc392d10b3e2f3819d42a785
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
