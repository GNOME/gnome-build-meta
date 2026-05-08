kind: meson

sources:
- kind: local
  path: files/gnome-mimeapps

build-depends:
- buildsystems/meson.bst
- core.bst
- incubator/meta-gnome-incubator-apps.bst

variables:
  strip-binaries: ''
