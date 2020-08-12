kind: autotools
sources:
- kind: tar
  url: http://ftp.netfilter.org/pub/ebtables/ebtables-2.0.11.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  install-commands:
    (>):
    - rm '%{install-root}%{sysconfdir}/ethertypes'
