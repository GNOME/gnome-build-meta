kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.3/gupnp-1.3.1.tar.xz
  ref: df70fe8321bfc53cadb6860edcff2e0dc456ec81899b463f41723684803d1408
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
