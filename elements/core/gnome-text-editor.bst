kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/42/gnome-text-editor-42.alpha2.tar.xz
  ref: 10dd33304bff8a3ddf0701da539801e6cd12995279af0e2458d2373fdd0b5e8a
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
