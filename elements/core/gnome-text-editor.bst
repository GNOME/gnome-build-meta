kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/49/gnome-text-editor-49.2.tar.xz
  ref: f838356939203cbd88fbf4f65790734b8915f5fada320a7c6a252b1ed3eb89fa
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
