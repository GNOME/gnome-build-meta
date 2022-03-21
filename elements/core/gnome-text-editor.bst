kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/42/gnome-text-editor-42.0.tar.xz
  ref: 0e32140ee1c13428563bcd5f784e61ee22ffd1ad27d8c02283b4358a81dfab50
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
