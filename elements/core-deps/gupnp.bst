kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.4/gupnp-1.4.4.tar.xz
  ref: 3761b15cb063621f847f3effb7d7637f0317500fca6bda1e1904f73921750a1f
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
