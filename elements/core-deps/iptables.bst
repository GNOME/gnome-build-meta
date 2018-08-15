depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 55d02dfa46263343a401f297d44190f2a3e5113c8933946f094ed40237053733
  url: tarballs_needing_help:iptables_1.6.2.orig.tar.bz2
variables:
  conf-aux: build-aux
  conf-local: --disable-nftables
