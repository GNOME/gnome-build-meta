kind: autotools

sources:
- kind: tar
  url: ftp_gnu_org:libcdio/libcdio-paranoia-10.2+0.94+2.tar.gz
  ref: d60f82ece97eeb92407a9ee03f3499c8983206672c28ae5e4e22179063c81941

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libcdio.bst
- freedesktop-sdk.bst:bootstrap-import.bst
