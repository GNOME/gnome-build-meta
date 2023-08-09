kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/45/orca-45.beta2.tar.xz
  ref: bc7d506d2e1239e34303b0f6158d572b439341f4191c1e6a4e3211da4a1cb1ce
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
