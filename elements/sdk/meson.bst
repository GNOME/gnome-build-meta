kind: pyproject

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-python-setuptools.bst
depends:
- freedesktop-sdk.bst:components/python3.bst

sources:
- kind: git_repo
  url: github:mesonbuild/meson.git
  track: '*.*.*'
  # exclude:
  # - '*rc*'
  ref: 1.4.0rc1-0-g0dc2499b2ae58e35e21d6796be238d6cca42466c
- kind: patch
  path: patches/meson/meson-no-lib64.patch
  strip-level: 0
