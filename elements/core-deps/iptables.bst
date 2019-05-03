kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:iptables_1.6.2.orig.tar.bz2
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-nftables
  conf-aux: build-aux
