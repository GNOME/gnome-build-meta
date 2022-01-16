kind: autotools

sources:
- kind: tar
  url: github:sahlberg/libnfs/archive/refs/tags/libnfs-4.0.0.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
