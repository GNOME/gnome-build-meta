kind: meson

sources:
- kind: local
  path: files/gnome-mimeapps

build-depends:
- core.bst
- incubator/meta-gnome-incubator-apps.bst
# We don't use the buildsystem stack to avoid staging git-minimal
- freedesktop-sdk.bst:components/meson.bst
- freedesktop-sdk.bst:components/ninja.bst

variables:
  strip-binaries: ''
