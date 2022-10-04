kind: meson

sources:
- kind: git_tag
  url: gnome:gupnp.git
  track: master
  ref: gupnp-1.6.0-0-gf05648e240c99be32911fb0c6de84e5954470e56

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
