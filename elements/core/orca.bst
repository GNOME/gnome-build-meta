kind: meson

sources:
- kind: tar
  url: gnome_downloads:orca/50/orca-50.2.tar.xz
  ref: 0714421cde8ec4baf47f18e4b4a12b4e5c4a3cfe3b161569e070fe037713fd04
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- core-deps/brltty.bst
- core-deps/dasbus.bst
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
