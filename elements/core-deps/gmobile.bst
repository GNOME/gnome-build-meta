kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:World/Phosh/gmobile.git
  track: v*.*.*
  exclude:
  - "*beta*"
  ref: v0.7.2-0-g0972fc91c37a432bc6156aab2cf5d14c6b32c48f

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
