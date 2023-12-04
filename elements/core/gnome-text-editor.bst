kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/45/gnome-text-editor-45.1.tar.xz
  ref: 6a86ec9920f466b6ed92695524d3b507b1e84272dafa5341d06a157de868af71
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
