kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.5/gupnp-1.5.3.tar.xz
  ref: 745e3fab33b3aa16db34263198afdcffd5e35822a3280dbbecef76d741c48687
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
