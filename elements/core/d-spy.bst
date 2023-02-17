kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/1.4/d-spy-1.4.0.tar.xz
  ref: eae8748cea624c5c4c75e021c2df1d7376e4f9f8fbe89ac4434911ecf7886772
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
