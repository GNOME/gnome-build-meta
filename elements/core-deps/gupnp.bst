kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp.git
  track: master
  ref: gupnp-1.6.6-0-g78db66f6af9879b93db8eb6452acb24a1aaac71c

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
