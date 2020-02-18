kind: autotools
sources:
- kind: tar
  url: gnome_downloads:orca/3.34/orca-3.34.2.tar.xz
  ref: 56353265dc6e69ffa3650466c2d784beb84d0816e2d5d5747ed1ed5ed17f4a29
depends:
- core-deps/pyatspi2.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-atk.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
