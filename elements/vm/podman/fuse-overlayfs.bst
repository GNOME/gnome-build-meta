kind: autotools

sources:
- kind: tar
  url: github_com:containers/fuse-overlayfs/archive/v1.1.2.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- vm/podman/fuse3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
