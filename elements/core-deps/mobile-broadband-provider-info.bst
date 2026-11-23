kind: meson

sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20261111/mobile-broadband-provider-info-20261111.tar.xz
  ref: e591c1d327c296964b1ae99e6f9458952b1f8e27337a6bc4b3f3e8e55016a182
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
