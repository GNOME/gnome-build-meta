kind: meson

sources:
- kind: tar
  url: https://gitlab.freedesktop.org/benzea/uresourced/-/archive/v0.3.0/uresourced-v0.3.0.tar.bz2

  ref: 2b14ce1ec2faf3734c1dc93c343ef0b6c2638be0f5675ca63325748705f6c77b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
