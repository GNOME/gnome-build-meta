kind: meson

sources:
- kind: local
  path: files/gnome-mimeapps

build-depends:
- core.bst
- incubator/meta-gnome-incubator-apps.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
