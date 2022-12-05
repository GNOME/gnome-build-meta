kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.6/gupnp-1.6.2.tar.xz
  ref: e90059cc83805dad93e83be47e53958f07471cc464f944391e7b5c82aa51a18f
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dcontext_manager=network-manager
