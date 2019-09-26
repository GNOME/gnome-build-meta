kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgit2-glib.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pygobject.bst
- sdk/vala.bst
- world/libgit2.bst
- world/libssh2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
