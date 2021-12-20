kind: cmake

sources:
- kind: tar
  url: https://github.com/LibVNC/libvncserver/archive/LibVNCServer-0.9.13.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
