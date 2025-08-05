kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 48.0-157-g20d08d5bcc7b6b199b2a3282e972dc17c112f9b0

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
