kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/50/gnome-text-editor-50.0.tar.xz
  ref: 9dc299da4daa085423b5d48db59f0021ad55e74143a5cb8ab2e5ffe17967f45b
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
