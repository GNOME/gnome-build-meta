kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-menus.git
  track: master
  ref: 3.36.0-17-ga228b85711f0fdecbaca4fa03b06ffd6156dc186
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
