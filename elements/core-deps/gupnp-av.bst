kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp-av/0.14/gupnp-av-0.14.0.tar.xz
  ref: 20aed546fc882e78a3f186a0c8bce5c841cc3a44b7ea528298fbdc82596fb156
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
