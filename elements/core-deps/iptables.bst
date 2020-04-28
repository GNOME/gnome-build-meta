kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:iptables_1.6.2.orig.tar.bz2
  ref: 55d02dfa46263343a401f297d44190f2a3e5113c8933946f094ed40237053733
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-nftables
