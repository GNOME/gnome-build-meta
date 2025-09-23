kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 49.1-5-g2618ccaed16a0aa542a3ddd46d02fafcf34ffd1c

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
