kind: pip

depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: base/python3.bst
  junction: freedesktop-sdk.bst

variables:
  pip: pip3

sources:
- kind: tar
  url: https://github.com/mesonbuild/meson/releases/download/0.47.2/meson-0.47.2.tar.gz
  ref: 92d8afd921751261e36151643464efd3394162f69efbe8cd53e0a66b1cf395eb
