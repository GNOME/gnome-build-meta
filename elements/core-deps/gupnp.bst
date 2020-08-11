kind: meson
sources:
- kind: tar
  url: gnome_downloads:gupnp/1.2/gupnp-1.2.4.tar.xz
  ref: f7a0307ea51f5e44d1b832f493dd9045444a3a4e211ef85dfd9aa5dd6eaea7d1
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
