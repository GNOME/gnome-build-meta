kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/46/tecla-46.beta.tar.xz
  ref: acb35dd8881484ba48f5b60f9253d5c190401e76e772e13bea2a9cc08390ac40
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
