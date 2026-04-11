kind: autotools

sources:
- kind: git_repo
  url: github:the-tcpdump-group/libpcap.git
  track: 'libpcap-*'
  exclude:
  - '*rc*'
  - '*.*-bp'

  ref: libpcap-1.10.5-0-gbbcbc9174df3298a854daee2b3e666a4b6e5383a
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
