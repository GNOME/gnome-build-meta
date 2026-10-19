kind: autotools

sources:
- kind: anitya
  project-id: 21751
  url: ftp_gnu_org:libcdio/libcdio-paranoia-10.2+{version}.tar.gz
  ref:
    version: 2.0.2
    sha256sum: 99488b8b678f497cb2e2f4a1a9ab4a6329c7e2537a366d5e4fef47df52907ff6
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- core-deps/libcdio.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
