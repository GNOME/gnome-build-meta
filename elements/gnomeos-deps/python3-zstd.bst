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
  ref: v1.5.6.7-0-ga51aab928c1a915ee6af7a129326eccfc7e1b93e
