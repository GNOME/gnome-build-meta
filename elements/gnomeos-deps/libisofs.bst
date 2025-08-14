kind: autotools

sources:
- kind: tar
  url: libburnia:libisofs-1.5.6.tar.gz
  ref: 0152d66a9d340b659fe9c880eb9190f3570fb477ac07cf52e8bcd134a1d30d70

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
