kind: autotools

sources:
- kind: tar
  url: https://github.com/sass/libsass/archive/3.6.4.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
