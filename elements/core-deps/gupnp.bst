kind: meson

sources:
- kind: git_tag
  url: gnome:gupnp.git
  track: master
  ref: gupnp-1.6.2-4-gf7bd7f9134bf7b6d7deb562ffa876c66ef2361b2

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
