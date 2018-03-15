kind: autotools
sources:
- kind: tar
  url: http://www.netfilter.org/projects/iptables/files/iptables-1.6.2.tar.bz2
  ref: 55d02dfa46263343a401f297d44190f2a3e5113c8933946f094ed40237053733
  etag: '"9c329-5643ca7a3904c"'
depends:
- base.bst
variables:
  conf-local: --disable-nftables
