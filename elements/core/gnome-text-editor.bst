kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/42/gnome-text-editor-42.2.tar.xz
  ref: e56d4a8cdcbce8a8f1c0881b45de799f8b25205ec0cbf2269e532025761cc5da
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/enchant-2.bst
- sdk/gtksourceview.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
