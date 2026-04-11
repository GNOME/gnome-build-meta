kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libusbmuxd.git
  track: '*.*.*'
  ref: 2.0.2-0-gce98c346b7c1dc2a21faea4fd3f32c88e27ca2af

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/plist.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
