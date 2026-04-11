kind: meson
sources:
- kind: git_repo
  url: freedesktop:spice/spice-protocol.git
  track: "v*.*.*"
  ref: v0.14.5-0-gc5c2f26422b44e3143c87814af73c38125d4ccfc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
