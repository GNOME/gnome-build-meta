kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-text-editor.git
  track: main
  ref: 43.0-32-g108acb4a05bde0b8575f05c8b85d90e3932932d8

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
