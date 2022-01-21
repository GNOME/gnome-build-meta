kind: meson

sources:
- kind: git
  url: gnome_gitlab:chergert/deviced.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/avahi-gobject.bst
- core-deps/flatpak.bst
- core-deps/jsonrpc-glib.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/gnutls.bst
