kind: autotools

sources:
- kind: tar
  url: libburnia:libisofs-1.5.2.tar.gz

  ref: ef5a139600b3e688357450e52381e40ec26a447d35eb8d21524598c7b1675500
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
