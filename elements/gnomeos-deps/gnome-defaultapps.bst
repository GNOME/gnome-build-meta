kind: meson

sources:
- kind: local
  path: files/gnome-defaultapps

build-depends:
- buildsystems/meson.bst
- core.bst
- incubator/meta-gnome-incubator-apps.bst

variables:
  strip-binaries: ''
