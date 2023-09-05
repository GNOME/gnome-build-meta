kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/45/tecla-45.rc.tar.xz
  ref: 0a85dfef35d9da6c2e18013fa30e0d9014f2bbedaab753d453a2e0473790bc95
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
