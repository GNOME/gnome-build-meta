kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/50/gnome-text-editor-50.1.tar.xz
  ref: f68036b09d378faa883bfe936e479c6ff37027c2ffed101daf912df70c51d0e6
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
