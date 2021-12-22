kind: autotools

sources:
- kind: tar
  url: debian_salsa:debian/anthy/-/archive/upstream/0.4/anthy-upstream-0.4.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
