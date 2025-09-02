kind: meson

sources:
- kind: tar
  url: gnome_downloads:orca/49/orca-49.beta.tar.xz
  ref: b92fa27b0aa7ef2a99611a3a4962df2174e857fdcc2ab1fc9874c75f70523f0f

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
