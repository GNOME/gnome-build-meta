kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.4/gupnp-1.4.3.tar.xz
  ref: 14eda777934da2df743d072489933bd9811332b7b5bf41626b8032efb28b33ba
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
