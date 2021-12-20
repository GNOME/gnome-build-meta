kind: autotools

sources:
- kind: tar
  url: libburnia:libburn-1.5.4.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
