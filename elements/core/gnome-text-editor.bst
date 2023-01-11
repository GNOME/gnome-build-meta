kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/44/gnome-text-editor-44.alpha.tar.xz
  ref: f5f06b8b0d00f283cc39a5b72e739883422fb9d9a6efcc7b25078de99c777cbf
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
