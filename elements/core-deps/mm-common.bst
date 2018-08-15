depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: ceffdcce1e5b52742884c233ec604bf6fded12eea9da077ce7a62c02c87e7c0b
  url: https://download.gnome.org/sources/mm-common/0.9/mm-common-0.9.12.tar.xz
- directory: doctags/
  kind: local
  path: files/mm-common/libstdc++.tag
variables:
  conf-local: --disable-network
