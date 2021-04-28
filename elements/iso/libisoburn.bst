kind: autotools

sources:
- kind: tar
  url: libburnia:libisoburn-1.5.2.tar.gz

  ref: cc720bc9511d8e0b09365e2c8b0e40817986be308cd96ca2705c807c955590ec
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- iso/libisofs.bst
- iso/libburn.bst
