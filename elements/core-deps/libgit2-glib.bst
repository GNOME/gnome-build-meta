kind: meson

sources:
- kind: git_repo
  url: gnome:libgit2-glib.git
  track: master
  ref: v1.2.1-9-g5b99a78c58c8c9d667a75354c96982631f297f91

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk-extra.bst:components/libgit2.bst
- freedesktop-sdk-extra.bst:components/libssh2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
