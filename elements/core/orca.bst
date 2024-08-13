kind: meson
sources:
- kind: tar
  url: gnome_downloads:orca/47/orca-47.alpha.tar.xz
  ref: 69b64aeacf128a19dc54efd5a42e60781002ddc0cda938e6201fc2e16d12468b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
