kind: meson

sources:
- kind: git_repo
  url: github:bugaevc/wl-clipboard.git
  track: 'v*'
  exclude:
  - '*_beta*'
  - '*-rc*'
  ref: v2.3.0-0-g67a7b937895bceec1ae5ccebb10216f63f70ca1b

build-depends:
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
