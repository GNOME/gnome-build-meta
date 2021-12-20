kind: meson

sources:
- kind: tar
  url: https://gitlab.freedesktop.org/benzea/uresourced/-/archive/v0.4.0/uresourced-v0.4.0.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
