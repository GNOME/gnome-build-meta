kind: meson

sources:
- kind: git_repo
  url: gnome:console.git
  track: main
  ref: 50.0-1-g71c309d96adfafa1fb662ffc5133b41b0fc341aa

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
