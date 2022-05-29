kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/42/orca-42.1.tar.xz
  ref: ea9e9d2de8708387b052a7be16a5e69cea9f6768dfaeb45e7bd99e46637162de
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
