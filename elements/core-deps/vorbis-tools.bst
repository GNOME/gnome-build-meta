kind: autotools

sources:
- kind: git_repo
  url: xiph:vorbis-tools.git
  track: "v*.*.*"
  ref: v1.4.3-0-g235540c05ad3f9cdc673ca09c237c9a9b5bda6eb

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libvorbis.bst
- freedesktop-sdk.bst:components/libflac.bst
