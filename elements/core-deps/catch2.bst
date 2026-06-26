kind: meson

sources:
- kind: git_repo
  url: github:catchorg/Catch2.git
  track: 'v*'
  ref: v3.15.1-0-gbcfb10e498df3e2ed8f814b3e4b689b9a85608ab

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
