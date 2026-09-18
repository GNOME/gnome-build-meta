kind: meson

sources:
- kind: git_repo
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20251101-73-g1721e3538d7cdf597578e8860c875c2107ee1565

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
