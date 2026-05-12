kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libusbmuxd.git
  track: '*.*.*'
  ref: 2.1.1-0-gadf9c22b9010490e4b55eaeb14731991db1c172c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/libimobiledevice-glue.bst
- core-deps/libplist.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
