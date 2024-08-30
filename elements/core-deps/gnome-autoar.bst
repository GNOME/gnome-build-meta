kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-autoar.git
  track: master
  ref: 0.4.4-6-g643139bfa2b9e380bec4d153b806bc54bc60661e
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dvapi=true
