kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/43/gnome-text-editor-43.0.tar.xz
  ref: b0fbbfcb17c6abc65dfb1ef5ff2fb1cadc1aa9536cd5e8589814b87e7812aa61
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
