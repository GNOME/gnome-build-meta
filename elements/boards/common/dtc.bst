kind: manual

sources:
- kind: tar
  url: https://git.kernel.org/pub/scm/utils/dtc/dtc.git/snapshot/dtc-1.6.0.tar.gz

depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  build-commands:
  - make

  install-commands:
  - make PREFIX="%{prefix}" LIBDIR="%{libdir}" DESTDIR="%{install-root}" -j1 install
