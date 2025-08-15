kind: meson

sources:
- kind: tar
  url: 
    freedesktop_files:benzea/uresourced/-/archive/v0.5.4/uresourced-v0.5.4.tar.bz2
  ref: 4c3b586bcd51f4221c80790c23c6560a3c48ff7b11fe0f2a5c98f33b9da615a3

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
