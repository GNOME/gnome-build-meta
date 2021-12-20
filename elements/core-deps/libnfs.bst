kind: autotools
sources:
- kind: tar
  url: https://sites.google.com/site/libnfstarballs/li/libnfs-2.0.0.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
