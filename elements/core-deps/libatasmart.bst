kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:libatasmart-0.19.tar.xz
depends:
- filename: components/systemd.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
