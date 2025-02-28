kind: meson
sources:
- kind: git_repo
  url: gnome:libgit2-glib.git
  track: master
  ref: v1.2.1-1-gca9e9065f4a267e8922da42d9ca9b9170bc9c145
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgit2.bst
- core-deps/libssh2.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
