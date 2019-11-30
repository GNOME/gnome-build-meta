kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:aplazas/libmanette.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libevdev.bst
- core-deps/libgudev.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
