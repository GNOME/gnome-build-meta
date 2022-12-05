kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.6/gupnp-1.6.3.tar.xz
  ref: 4f4f418b07b81164df1f7ab612e28e4c016c2d085b8a4f39f97945f8b15ee248
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
