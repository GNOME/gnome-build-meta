kind: meson

sources:
- kind: git_repo
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20251101-34-gfc19dfddad4624bd1908af8f110127152cfc3dac

build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
