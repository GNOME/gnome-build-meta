kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:iptables_1.6.2.orig.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-nftables
  conf-aux: build-aux
