kind: distutils

depends:
  - base.bst

variables:
  python: python3

sources:
  - kind: git
    url: https://github.com/mesonbuild/meson.git
    track: master
    ref: 36fc65527291553bab6292d4b91208bed5aadda3
