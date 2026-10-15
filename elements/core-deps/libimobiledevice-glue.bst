kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libimobiledevice-glue.git
  track: '*.*.*'
  ref: 1.3.3-0-gecc0f1ba4fca96f3d7ef060b6c53f2e0bcfe829f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/libplist.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
