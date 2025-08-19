kind: meson

sources:
- kind: git_repo
  url: github:bugaevc/wl-clipboard.git
  track: 'v*'
  exclude:
  - '*_beta*'
  - '*-rc*'
  ref: v2.2.1-0-g3eb912c274042cd5deed6b478b39908a12f37498

build-depends:
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
