kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 49.rc-9-gf179d226dafaad3bdd4b78720abf4db6a75cecd7

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
