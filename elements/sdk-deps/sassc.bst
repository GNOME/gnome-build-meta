kind: autotools

sources:
- kind: tar
  url: github_com:sass/sassc/archive/refs/tags/3.6.1.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk-deps/libsass.bst
- freedesktop-sdk.bst:bootstrap-import.bst
