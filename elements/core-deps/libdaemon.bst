kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
