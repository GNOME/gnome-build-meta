kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/46/gnome-text-editor-46.rc.tar.xz
  ref: 48ad0e8a9a3601afb222800dc236df4efcbe98a74e9cb43847c836367c1fc284
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
