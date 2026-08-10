kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp-av/0.14/gupnp-av-0.14.5.tar.xz
  ref: 93918fcf5af529fda5b3d2d9fc3b77cd93df88064939b82f249f5577d8de1c02
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
