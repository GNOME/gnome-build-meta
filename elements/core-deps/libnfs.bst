kind: autotools
sources:
- kind: tar
  url: https://sites.google.com/site/libnfstarballs/li/libnfs-2.0.0.tar.gz
  ref: 6eaeb85559bb3e378284688f06fc56b018d324a5fc69f3f5259d24593ad113cf
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
