kind: autotools
sources:
- url: http://wayland.freedesktop.org/releases/wayland-1.14.0.tar.xz
  kind: tar
  ref: ed80cabc0961a759a42092e2c39aabfc1ec9a13c86c98bbe2b812f008da27ab8
depends:
- base.bst
variables:
  conf-local: --disable-documentation
