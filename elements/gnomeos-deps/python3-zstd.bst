kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/zstd.bst

environment:
  ZSTD_EXTERNAL: "1"

sources:
- kind: git_repo
  url: github:sergey-dryabzhinsky/python-zstd.git
  track: 'v*'
  ref: v1.5.7.2-0-g52ff0e34a585ec98480f6a927e7277068470a235
