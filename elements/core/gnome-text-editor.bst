kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/47/gnome-text-editor-47.2.tar.xz
  ref: 7d04039b16174ec5fd65fea2f447f3febd9fdf2aa36e9997abc6ff992cc31e38
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/editorconfig-core-c.bst
- core-deps/libspelling.bst
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
