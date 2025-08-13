kind: autotools

sources:
- kind: tar
  url: ftp_gnu_org:libcdio/libcdio-paranoia-10.2+2.0.2.tar.gz
  ref: 99488b8b678f497cb2e2f4a1a9ab4a6329c7e2537a366d5e4fef47df52907ff6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libcdio.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
