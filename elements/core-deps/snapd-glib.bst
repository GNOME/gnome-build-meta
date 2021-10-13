kind: meson

sources:
- kind: tar
  url: github_files:snapcore/snapd-glib/releases/download/1.63/snapd-glib-1.63.tar.xz
  ref: 28bc96c8bb76d09f709c3d35cab743ccae57699f4eef5d36db914f0c1a77ab47

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst

variables:
  meson-local: >-
    -Dqt-bindings=false
