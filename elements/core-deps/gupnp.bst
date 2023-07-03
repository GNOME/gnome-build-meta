kind: meson

sources:
- kind: tar
  url: gnome_downloads:gupnp/1.6/gupnp-1.6.4.tar.xz
  ref: d6c3d03583844fa52abe003043186007f0c84145fe3b00fab25995beda9be55a
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
