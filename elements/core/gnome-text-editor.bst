kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/49/gnome-text-editor-49.0.tar.xz
  ref: 8e43b0cfa8152cd3c7630de565de2d6930e887cf2d8b84480fbf853a2bc2c8a6
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
