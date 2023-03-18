kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-text-editor.git
  track: main
  ref: 44.0-1-g4784507d54f5eba7d5bff1e4b37abf5842179048

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
