kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libdazzle.git
  track: master
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
