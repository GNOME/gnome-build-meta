kind: autotools
sources:
- kind: tar
  url: https://people.gnome.org/~mcatanzaro/tarballs-needing-help/iptables_1.6.2.orig.tar.bz2
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-nftables
  conf-aux: build-aux
