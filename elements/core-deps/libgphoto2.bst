kind: autotools
sources:
- kind: git_repo
  url: github:gphoto/libgphoto2.git
  track: 'v*.*.*'
  ref: v2.5.32-0-gde1f0617b1ffa39c1980d1306343709c7dc0120e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
