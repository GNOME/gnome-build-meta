kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.4/gupnp-1.4.1.tar.xz
  ref: 899196b5e66f03b8e25f046a7a658cd2a6851becb83f2d55345ab3281655dc0c
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
