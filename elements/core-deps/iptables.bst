kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:iptables_1.6.2.orig.tar.bz2
  ref: 55d02dfa46263343a401f297d44190f2a3e5113c8933946f094ed40237053733
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
