kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/public/libatasmart-0.19.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
