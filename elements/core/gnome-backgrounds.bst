kind: meson

sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/gnome-backgrounds.git
  track: main

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
