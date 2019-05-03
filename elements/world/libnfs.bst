kind: autotools
sources:
- kind: tar
  url: https://sites.google.com/site/libnfstarballs/li/libnfs-2.0.0.tar.gz
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
