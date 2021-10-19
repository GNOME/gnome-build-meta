kind: autotools

sources:
- kind: tar
  url: https://www.tcpdump.org/release/libpcap-1.10.1.tar.gz

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
