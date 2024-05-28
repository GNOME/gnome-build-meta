kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/46/gnome-text-editor-46.3.tar.xz
  ref: 005b48104a909be66ae07448d2bc5706c7d113781057a24ff6da55bdf324c73d
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
