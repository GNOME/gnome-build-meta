kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:libcdio/libcdio-paranoia-10.2+0.94+2.tar.gz
depends:
- core-deps/libcdio.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
