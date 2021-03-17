kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/40/orca-40.rc.tar.xz
  ref: 239343acdc68f3e7aa7b3ecb506beb2264f3e333a1d73930418bb42d704c84b0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
