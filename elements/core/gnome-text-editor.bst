kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/44/gnome-text-editor-44.rc.tar.xz
  ref: 9f5b71d27a850b473ab23ceff921da7de1083aa2b20703d9b4cf1bbc4f1d3b7b
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
