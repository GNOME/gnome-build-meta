kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:World/Phosh/gmobile.git
  track: v*.*.*
  exclude:
  - "*beta*"
  ref: v0.6.0-0-g75c1a95ce5cb6b17c6cf05a8a22f57a3921831bf

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
