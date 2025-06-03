kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp.git
  track: master
  ref: gupnp-1.6.8-9-g611f67ee22e2799beca283dc53a02cc6303e1d8b

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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dcontext_manager=network-manager
