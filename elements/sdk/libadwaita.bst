kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libadwaita.git
  track: main

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk-deps/sassc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
