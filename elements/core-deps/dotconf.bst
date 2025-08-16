kind: autotools
sources:
- kind: git_repo
  url: github:williamh/dotconf.git
  track: 'v*'
  ref: v1.4.1-0-g7c3e0515c29efce45de6aae29befb2ab4396bd60
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
