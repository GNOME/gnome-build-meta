kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/49/gnome-text-editor-49.alpha.tar.xz
  ref: 81fc974e15323bd459e50107a8b72efc9f44d17cf7ea3324df2b42dd54dec4fd
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
