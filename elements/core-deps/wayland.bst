kind: autotools
sources:
- kind: tar
  url: http://wayland.freedesktop.org/releases/wayland-1.15.0.tar.xz
  ref: eb3fbebb8559d56a80ad3753ec3db800f587329067962dbf65e14488b4b7aeb0
depends:
- base.bst
variables:
  conf-local: --disable-documentation
