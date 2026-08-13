kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:World/Phosh/gmobile.git
  track: v*.*.*
  exclude:
  - "*beta*"
  ref: v0.7.3-0-gd1b0e693807c2c2de8ab34b43060625c6d89d636

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
