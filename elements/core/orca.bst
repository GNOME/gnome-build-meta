kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.35/orca-3.35.92.tar.xz
  ref: 2c4bde94aca1b719802ce46ae416ab59ac49dd762063442c7cdfdc17d50c2f7b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi2.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
