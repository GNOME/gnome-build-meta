kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:chergert/deviced.git
  track: master

  ref: 8bb61199a689bfc02fe07b02edda2039d1999d1f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/avahi-gobject.bst
- core-deps/flatpak.bst
- core-deps/jsonrpc-glib.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/gnutls.bst
