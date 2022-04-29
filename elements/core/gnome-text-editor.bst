kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/42/gnome-text-editor-42.1.tar.xz
  ref: a3c8508033bfb63a8b48a062ac1e67b2c333ba0153879b38c661968a103ad15c
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
