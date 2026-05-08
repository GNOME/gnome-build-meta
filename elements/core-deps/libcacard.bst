kind: meson

sources:
- kind: git_repo
  url: freedesktop:spice/libcacard.git
  track: 'v*.*.*'
  ref: v2.8.2-0-gdf2d3c05a250741632184c2cc66df247039a70d7

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddisable_tests=true
