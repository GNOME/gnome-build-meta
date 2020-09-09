kind: manual

sources:
- kind: tar
  url: https://git.kernel.org/pub/scm/utils/dtc/dtc.git/snapshot/dtc-1.6.0.tar.gz
  ref: 3d15dee7126a6c4a015ab47ec908cab13e39774b0315efaaebb223cb4a4d349c

depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/pkg-config.bst

config:
  build-commands:
  - make

  install-commands:
  - make PREFIX="%{prefix}" LIBDIR="%{libdir}" DESTDIR="%{install-root}" -j1 install
