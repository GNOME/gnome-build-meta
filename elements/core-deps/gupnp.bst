kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.4/gupnp-1.4.0.tar.xz
  ref: 590ffb02b84da2a1aec68fd534bc40af1b37dd3f6223f9d1577fc48ab48be36f
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
