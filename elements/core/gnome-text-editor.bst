kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/45/gnome-text-editor-45.3.tar.xz
  ref: f3ffcb11a92dfd04ba3c3b3d0e667847d4449a21e012ae36f07dda05ac7d3a52
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
