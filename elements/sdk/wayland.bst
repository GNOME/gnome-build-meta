kind: autotools
sources:
- kind: tar
  url: https://wayland.freedesktop.org/releases/wayland-1.15.0.tar.xz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
