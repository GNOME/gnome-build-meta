kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/48/gnome-text-editor-48.rc.tar.xz
  ref: 62061028c7f1a304d0ab7a4e5aeae04efb6756962b0ceaa21f34c74784703924
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
