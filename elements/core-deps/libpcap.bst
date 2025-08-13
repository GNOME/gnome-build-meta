kind: autotools

sources:
- kind: tar
  url: tcpdump:release/libpcap-1.10.5.tar.gz
  ref: 37ced90a19a302a7f32e458224a00c365c117905c2cd35ac544b6880a81488f0

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
