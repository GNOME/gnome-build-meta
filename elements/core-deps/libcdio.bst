kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:libcdio/libcdio-2.1.0.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --without-cdda-player
