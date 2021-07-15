kind: autotools
sources:
- kind: tar
  url: http://www.tcpdump.org/release/libpcap-1.10.0.tar.gz
  ref: 8d12b42623eeefee872f123bd0dc85d535b00df4d42e865f993c40f7bfc92b1e
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
