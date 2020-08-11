kind: meson

sources:
- kind: tar
  url: https://gitlab.freedesktop.org/benzea/uresourced/-/archive/v0.2.0/uresourced-v0.2.0.tar.bz2

  ref: 0d6580dd5f8f7291f9d5ee30f0fa9ea5e59fae8771b67069aa1a7c3412e53d65
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
