kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-text-editor.git
  track: main
  ref: 48.2-30-g48adf7779e97e9c9d5672994ee9008c3aa050924

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
