kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-av.git
  track: master
  ref: gupnp-av-0.14.3-9-g5c0a55c5f7d87982720fe2a7a78f32beeb023126

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
