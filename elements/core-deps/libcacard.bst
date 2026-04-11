kind: meson
sources:
- kind: git_repo
  url: freedesktop:spice/libcacard.git
  track: 'v*.*.*'
  ref: v2.8.1-0-g7b07684ea6698d4885ff2062350ad8798a04de42

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddisable_tests=true
