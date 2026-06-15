kind: meson

sources:
- kind: git_repo
  url: gnome:manuals.git
  track: main
  ref: 50.1-10-g5f1ae578343865b4515ba0262a68af029b07ea9f

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/foundry.bst
- core-deps/gom.bst
- sdk-deps/libpanel.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
