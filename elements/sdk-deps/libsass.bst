kind: autotools

sources:
- kind: tar
  url: github_file:sass/libsass/archive/3.6.4.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
