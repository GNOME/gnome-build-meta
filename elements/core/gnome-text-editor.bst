kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-text-editor/50/gnome-text-editor-50.beta.tar.xz
  ref: c380252c8b43b07c12ddf9b7152ef24f819e41756294dffc6c73817be8598495
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
