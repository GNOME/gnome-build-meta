kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libmanette.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
