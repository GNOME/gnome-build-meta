kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.4/gupnp-1.4.2.tar.xz
  ref: bcad92f2ee09d02f55e0f6ea480c475ed8a7523529263f7ce28013d3c263bacc
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dcontext_manager=network-manager
