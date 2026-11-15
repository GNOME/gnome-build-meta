kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:World/Phosh/gmobile.git
  track: v*.*.*
  exclude:
  - "*beta*"
  ref: v0.7.5-0-gee063f756afe51498801863412762a525fa552e0

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
