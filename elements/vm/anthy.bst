kind: autotools

sources:
- kind: tar
  url: https://salsa.debian.org/debian/anthy/-/archive/upstream/0.4/anthy-upstream-0.4.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
