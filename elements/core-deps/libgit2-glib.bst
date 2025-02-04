kind: meson
sources:
- kind: git_repo
  url: gnome:libgit2-glib.git
  track: master
  ref: v1.2.0-4-gf3c2d7e662d90a7ab4ba32c1bfa28339fb084130
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgit2.bst
- core-deps/libssh2.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
