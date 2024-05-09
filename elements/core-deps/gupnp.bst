kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp.git
  track: master
  ref: gupnp-1.6.6-4-gc99aa670b2f68123962b3873a580ef7e1bccc7d7

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
