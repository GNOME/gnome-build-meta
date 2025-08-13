kind: autotools
sources:
- kind: tar
  url: 
    github_files:gphoto/libgphoto2/releases/download/v2.5.32/libgphoto2-2.5.32.tar.xz
  ref: 495a347be21b8f970607a81e739aa91513a8479cbd73b79454a339c73e2b860e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
