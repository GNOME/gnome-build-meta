kind: meson

sources:
- kind: tar
  url: freedesktop_files:bolt/bolt/-/archive/0.9.10/bolt-0.9.10.tar.bz2
  ref: b4e467ff098305f8dd53b12102b648cde0222c396e954e330190a264eb662418
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
