kind: meson
sources:
- kind: tar
  url: gnome_downloads:gupnp/1.1/gupnp-1.1.2.tar.xz
  ref: 300a7c8fe86a8c90ea0820aae4423555189edba13159484716369aa8cf83d412
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dcontext_manager=network-manager
