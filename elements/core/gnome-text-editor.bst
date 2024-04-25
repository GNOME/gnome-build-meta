kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/46/gnome-text-editor-46.1.tar.xz
  ref: 8ebfa0bea12e75f5efeacc721be3b8ae65027b024aa81db9ecab8c312257a2eb
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
