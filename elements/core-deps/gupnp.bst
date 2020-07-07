kind: meson
sources:
- kind: tar
  url: gnome_downloads:gupnp/1.2/gupnp-1.2.3.tar.xz
  ref: d447e54d88e4a8fab84ad1766070e9208e21166fc7e2ce95df6e33e49e8d29b1
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
