kind: meson

sources:
- kind: git_repo
  url: freedesktop:bolt/bolt.git
  track: '*.*'
  ref: 0.9.10-0-gc0d4cb2f4399e86417907a37c0d8ef3bb9fb406f
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
