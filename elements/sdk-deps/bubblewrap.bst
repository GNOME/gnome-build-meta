kind: autotools

sources:
- kind: tar
  url: https://github.com/containers/bubblewrap/releases/download/v0.5.0/bubblewrap-0.5.0.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:bootstrap-import.bst
