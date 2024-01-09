kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/46/gnome-text-editor-46.alpha.tar.xz
  ref: 71cdaffe9a0edc3fa22dc85cba45c6e0f21096016c37733c602774b8c5cdbd04
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
