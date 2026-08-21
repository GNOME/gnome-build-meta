kind: meson

sources:
- kind: git_repo
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20251101-64-g515beda0f8ef9113cb0c07851bc4ef5c830bb9bc

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
