kind: meson

sources:
- kind: git_repo
  url: gnome:devhelp.git
  track: main
  ref: 43.0-28-ge6d9c3d2b7048dc84a1bddec1e1b42455bdea47d

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
