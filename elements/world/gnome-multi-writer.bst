kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-multi-writer.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libgusb.bst
- core-deps/udisks2.bst
- core-deps/libcanberra.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
