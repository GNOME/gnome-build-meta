kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:wayland/wayland
  track: master
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
