kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: git_repo
  url: github:mesonbuild/meson.git
  track: '*.*.*'
  exclude:
  - '*rc*'
  ref: 1.4.1-0-g1e2e30bbcfea876e05ce5b863579dc7eb71b5fb3
- kind: patch
  path: patches/meson/meson-no-lib64.patch
  strip-level: 0
