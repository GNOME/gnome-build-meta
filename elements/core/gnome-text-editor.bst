kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/47/gnome-text-editor-47.3.tar.xz
  ref: 46c672bfe86e44de980797636a280f05cc5eaf6cde9b42dc4bcc956405629725
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
