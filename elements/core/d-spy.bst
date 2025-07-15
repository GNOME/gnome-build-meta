kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 48.0-156-ge84257d6e031a1e1332c8c52a47ee7902830f706

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
