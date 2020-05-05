kind: autotools

sources:
- kind: tar
  url: downloads.sourceforge.net:swig/swig-4.0.1.tar.gz

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
