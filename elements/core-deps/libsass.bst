kind: autotools

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
sources:
- kind: tar
  url: https://github.com/sass/libsass/archive/3.5.0.tar.gz
