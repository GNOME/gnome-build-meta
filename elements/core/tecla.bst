kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/46/tecla-46.rc.tar.xz
  ref: 8633e8b503b369e99b99c7a7908e6718ccc46c6c8e850fc75467802cf89dab62
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
