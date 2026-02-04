kind: autotools

sources:
- kind: git_repo
  url: github:mpartel/bindfs.git
  track: '*.*'
  ref: 1.18.4-0-g8cda89a91a836e106ad275b840f44485194bec91

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/fuse3.bst
