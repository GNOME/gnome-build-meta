kind: meson

sources:
- kind: git_repo
  url: github:fujiwarat/anthy-unicode.git
  track: '*.*'
  ref: 1.0.0.20260127-0-g924994eebf13d87022ddcf07eac485f784c4e17d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Demacs=disabled
