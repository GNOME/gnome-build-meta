kind: meson

sources:
- kind: git_repo
  url: gnome:console.git
  track: main
  ref: 50.0-2-g908d86152403e2f87e61a791231aef44cac18a71

build-depends:
- freedesktop-sdk.bst:components/appstream.bst
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
