kind: autotools
sources:
- kind: tar
  url: https://ftp.gimp.org/pub/babl/0.1/babl-0.1.72.tar.xz
depends:
- filename: base/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
