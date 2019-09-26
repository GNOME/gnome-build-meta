kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-backgrounds.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
