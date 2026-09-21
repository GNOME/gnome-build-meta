kind: meson

sources:
- kind: git_repo
  url: freedesktop:benzea/uresourced.git
  track: 'v*'
  ref: v0.5.5-0-g3fab695d9cfed98d3b07666a4eb0c19c3361d544

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
