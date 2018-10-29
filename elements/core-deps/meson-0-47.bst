kind: pip
sources:
- kind: git
  url: https://github.com/mesonbuild/meson.git
  track: 0.47.2
depends:
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  pip: pip3
