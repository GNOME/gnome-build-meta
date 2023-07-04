kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/45/gnome-text-editor-45.alpha.tar.xz
  ref: 223103fa51efc6ebf79727c1f56f452ea5aa5e1a65fa464f587e4f4bf6c12239
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/editorconfig-core-c.bst
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
