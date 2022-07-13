kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.5/gupnp-1.5.2.tar.xz
  ref: 6ab0742fdefd45497f7939f03d07c0d03c0c2c2b22e4a1ec3311bb908ada0b5b
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
