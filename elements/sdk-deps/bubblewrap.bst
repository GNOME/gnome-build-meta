kind: autotools

sources:
- kind: tar
  url: github_com:containers/bubblewrap/releases/download/v0.4.1/bubblewrap-0.4.1.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:bootstrap-import.bst
