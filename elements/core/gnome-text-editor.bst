kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/47/gnome-text-editor-47.4.tar.xz
  ref: 3ac505a904aafce353813bb13a7b8f82a39d474c4a945ce89aef7e650ec9f8da
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
