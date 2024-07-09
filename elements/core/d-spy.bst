kind: meson

sources:
- kind: tar
  url: gnome_downloads:d-spy/47/d-spy-47.alpha.tar.xz
  ref: edf0ba36fc57a27bd9468a166ea5b89e73e6b9445e7a9dfa17167351949b08a0
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/libadwaita.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
