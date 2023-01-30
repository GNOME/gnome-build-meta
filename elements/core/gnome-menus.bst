kind: autotools
sources:
- kind: git_tag
  url: gnome:gnome-menus.git
  track: master
  ref: 3.36.0-16-gdc71fd055f079cdebc5d6956545fcc8bf94b6127
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
