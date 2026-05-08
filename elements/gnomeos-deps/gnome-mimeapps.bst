kind: meson

sources:
- kind: local
  path: files/gnome-mimeapps

build-depends:
- core.bst
- incubator/meta-gnome-incubator-apps.bst
- buildsystems/meson.bst

variables:
  strip-binaries: ''
