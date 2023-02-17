kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/44/gnome-text-editor-44.beta.tar.xz
  ref: c0c53df9f47f715e553d9814c95a3ff51ca130e70a8d280922702da63cbb9063
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
