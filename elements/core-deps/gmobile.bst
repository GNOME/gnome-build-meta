kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:World/Phosh/gmobile.git
  track: v*.*.*
  ref: v0.4.0-0-gfb21129f5d31a6e640225415a25118d8f16363a1

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
