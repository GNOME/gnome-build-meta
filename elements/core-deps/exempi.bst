kind: autotools
sources:
- kind: tar
  url: https://libopenraw.freedesktop.org/download/exempi-2.5.2.tar.bz2
build-depends:
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/boost.bst
- freedesktop-sdk.bst:bootstrap-import.bst
