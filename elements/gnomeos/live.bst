kind: meson

sources:
- kind: local
  path: files/gnomeos/live

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/lvm2.bst
- freedesktop-sdk.bst:components/python3.bst
