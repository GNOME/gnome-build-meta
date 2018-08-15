depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: ecec7e9d66b1d3692f10b3b20aa97fb25e874a784c5552a7b1698091fef5a688
  url: https://www.freedesktop.org/software/libevdev/libevdev-1.5.6.tar.xz
variables:
  conf-aux: build-aux
