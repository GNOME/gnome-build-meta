kind: meson

sources:
- kind: git_repo
  url: freedesktop:bolt/bolt.git
  track: '*.*'
  ref: 0.9.11-0-g9d1d66380353dab94c28466f34adb2ba6c7e4393
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
