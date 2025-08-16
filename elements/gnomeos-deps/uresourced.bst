kind: meson

sources:
- kind: git_repo
  url: freedesktop:benzea/uresourced.git
  track: 'v*'
  ref: v0.5.4-0-g907d91989f50842caaf9d681e82a9d6791701927

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
