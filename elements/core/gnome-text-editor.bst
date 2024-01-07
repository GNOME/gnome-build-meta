kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-text-editor.git
  track: main
  ref: 45.0-69-g9c30d8f0cf04239e212b3e62c3a5e258bf72d9fc

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
