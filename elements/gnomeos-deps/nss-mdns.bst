kind: autotools

sources:
- kind: tar
  url: 
    github_files:lathiat/nss-mdns/releases/download/v0.15.1/nss-mdns-0.15.1.tar.gz
  ref: ddf71453d7a7cdc5921fe53ef387b24fd0c3c49f4dcf94a2a437498596761a21

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

runtime-depends:
- freedesktop-sdk.bst:components/avahi.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
