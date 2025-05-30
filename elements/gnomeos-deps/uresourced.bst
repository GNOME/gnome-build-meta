kind: meson

sources:
- kind: tar
  url: freedesktop_files:benzea/uresourced/-/archive/v0.4.0/uresourced-v0.4.0.tar.bz2
  ref: c2903ac0a621c51f661bf0a1c14a75c1c4169e1d8549f6049ef3cce07f5a6f97

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
