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
  ref: 1.4.0-0-geaefe29463a61a311a6b1de6cd539f39500399ff
- kind: patch
  path: patches/meson/meson-no-lib64.patch
  strip-level: 0
