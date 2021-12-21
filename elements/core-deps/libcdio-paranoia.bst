kind: autotools

sources:
- kind: tar
  url: tar_ftp_gnu_org:gnu/libcdio/libcdio-paranoia-10.2+2.0.1.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libcdio.bst
- freedesktop-sdk.bst:bootstrap-import.bst
