kind: autotools

sources:
- kind: tar
  url: https://github.com/sass/sassc/releases/download/3.4.8/sassc-3.4.8.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk-deps/libsass.bst
- freedesktop-sdk.bst:bootstrap-import.bst
