kind: meson

sources:
- kind: git_tag
  url: gnome:d-spy.git
  track: main
  ref: 1.6.0-25-ge8027247435c235f2d279bb83f68f3365dcf19da

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
