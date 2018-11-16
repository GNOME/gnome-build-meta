kind: pip
sources:
- kind: tar
  url: https://github.com/mesonbuild/meson/releases/download/0.47.2/meson-0.47.2.tar.gz
depends:
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  pip: pip3
