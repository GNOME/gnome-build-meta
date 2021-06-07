kind: meson
sources:
- kind: tar
  url: gnome_downloads:gupnp/1.2/gupnp-1.2.7.tar.xz
  ref: 8441276f1afd0176e6f595026a3a507eed1809abfa04026bad3f21622b3523ec
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
