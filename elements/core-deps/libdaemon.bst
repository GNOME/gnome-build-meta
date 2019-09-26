kind: autotools
sources:
- kind: tar
  url: http://0pointer.de/lennart/projects/libdaemon/libdaemon-0.14.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
