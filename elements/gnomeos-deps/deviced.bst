kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:chergert/deviced.git
  track: master
  ref: 8bb61199a689bfc02fe07b02edda2039d1999d1f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/jsonrpc-glib.bst
- sdk-deps/appstream-glib.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/avahi-gobject.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/gnutls.bst

variables:
  local_flags: -DHAVE_STDARG_H
