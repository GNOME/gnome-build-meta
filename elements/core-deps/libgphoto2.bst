kind: autotools
sources:
- kind: tar
  url: github_com:gphoto/libgphoto2/releases/download/v2.5.27/libgphoto2-2.5.27.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
