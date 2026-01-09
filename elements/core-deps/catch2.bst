kind: meson

sources:
- kind: git_repo
  url: github:catchorg/Catch2.git
  track: 'v*'
  ref: v3.12.0-0-g88abf9bf325c798c33f54f6b9220ef885b267f4f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
