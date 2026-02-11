kind: meson

sources:
- kind: git_repo
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20251101-8-g3495f2277ac34dc40f9ee124468312f5565f1056

build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
