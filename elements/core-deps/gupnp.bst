kind: meson
sources:
- kind: tar
  url: gnome_downloads:gupnp/1.3/gupnp-1.3.0.tar.xz
  ref: df8279293aae45ea6bb6de1b13bf1988285c8f2f4f25569fb0d79325a8471666
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
