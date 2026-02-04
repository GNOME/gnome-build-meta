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
  ref: v1.5.7.3-0-gdd209d024f46092474ef1edcced0a5a7574890af
