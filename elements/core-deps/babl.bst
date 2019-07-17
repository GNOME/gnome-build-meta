kind: autotools
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/babl/0.1/babl-0.1.66.tar.bz2
depends:
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
