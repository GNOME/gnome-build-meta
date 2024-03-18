kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/46/gnome-text-editor-46.0.tar.xz
  ref: c018d0b3792c044c1558d1d0dd92b09fb0a96c9e2d25e1ae1f4cf91f7eab4614
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
