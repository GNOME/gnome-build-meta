kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.5/gupnp-1.5.4.tar.xz
  ref: 988329157c351252ae07baad8aaebf10a7cb55a642c22d613aa85ba74c051b78
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
