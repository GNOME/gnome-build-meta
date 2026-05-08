kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp.git
  track: master
  ref: gupnp-1.6.10-0-gfcbbad05f4f37eec17c01f5e87426b471c12452f

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/gssdp.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dcontext_manager=network-manager
