kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-text-editor.git
  track: main
  ref: 48.2-15-g9e57fc9cf84896eb75f4cacb511e6e1a3ad2f7f0

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
- freedesktop-sdk.bst:bootstrap-import.bst
