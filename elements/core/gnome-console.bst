kind: meson

sources:
- kind: git_repo
  url: gnome:console.git
  track: main
  ref: 50.0-9-g3f0d40dda4863fc52a087df68aed8677caa48a01

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
