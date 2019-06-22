kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:portablexdr-4.9.1.tar.gz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
