kind: meson

sources:
- kind: git_tag
  url: gnome:gupnp.git
  track: master
  ref: gupnp-1.6.1-1-g4d3c1280a9a7f862d4f941160cfd66dd8eb255dc

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
