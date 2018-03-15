kind: autotools
sources:
- kind: tar
  url: http://www.netfilter.org/projects/iptables/files/iptables-1.6.2.tar.bz2
depends:
- base.bst
variables:
  conf-local: --disable-nftables
