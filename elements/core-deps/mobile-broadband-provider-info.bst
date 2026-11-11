kind: meson

sources:
- kind: git_repo
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20261111-1-g989ca8c1a93062e82be406a941086aa95d90ae22

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
