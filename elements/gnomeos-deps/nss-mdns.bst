kind: autotools

sources:
- kind: git_repo
  url: github:lathiat/nss-mdns.git
  track: 'v*'
  ref: v0.15.1-0-g4b3cfe818bf72d99a02b8ca8b8813cb2d6b40633

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

runtime-depends:
- freedesktop-sdk.bst:components/avahi.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
