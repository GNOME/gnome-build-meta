kind: meson

sources:
- kind: tar
  url: freedesktop_files:bolt/bolt/-/archive/0.9.7/bolt-0.9.7.tar.bz2
  ref: 2e77e3fb1836d8aedf93f850558bb2b154a1dabe5f1fb5123286a2b3213b1288
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
