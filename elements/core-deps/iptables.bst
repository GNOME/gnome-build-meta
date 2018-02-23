kind: autotools

depends:
- base.bst

sources:
- kind: git
  url: https://git.netfilter.org/iptables/
  track: master
  ref: db56ab74c9578e20b8acfa5958e4df233e4e086e  # v1.6.2

variables:
  conf-local: --disable-nftables
