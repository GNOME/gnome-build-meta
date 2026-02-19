kind: meson

sources:
- kind: git_repo
  url: github:fujiwarat/anthy-unicode.git
  track: '*.*'
  ref: 1.0.0.20260213-0-g35cb19e6434e25bc7b9e1e4838e4416c972914ba

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Demacs=disabled
