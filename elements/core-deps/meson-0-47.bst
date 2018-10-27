kind: pip

depends:
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: base/python3.bst
  junction: freedesktop-sdk.bst

variables:
  pip: pip3

sources:
- kind: git
  url: https://github.com/mesonbuild/meson.git
  track: 0.47.2
  ref: 0a5ff338012a00f32c3aa9d8773835accc3e4e5b    # 0.47.2
