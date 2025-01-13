kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp-av/0.14/gupnp-av-0.14.3.tar.xz
  ref: abe2046043e66a9529365d89059be12219c21a4ede0c4743703b0fd9aaf17bb4

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
