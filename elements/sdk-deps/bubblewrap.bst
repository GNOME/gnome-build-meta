kind: autotools
sources:
- kind: tar
  url: github_com:containers/bubblewrap/releases/download/v0.4.1/bubblewrap-0.4.1.tar.xz
  ref: b9c69b9b1c61a608f34325c8e1a495229bacf6e4a07cbb0c80cf7a814d7ccc03
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:bootstrap-import.bst
